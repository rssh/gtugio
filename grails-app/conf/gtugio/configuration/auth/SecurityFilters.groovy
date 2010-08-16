package gtugio.configuration.auth

import gtugio.core.auth.Secure 
import org.apache.commons.lang.WordUtils 


class SecurityFilters {

	def static actionRoleMap = [:]
	
	def filters = {
		auth(controller: "*", action: "*") {
			before = {
				def curActionName = actionName == null ? "index" : actionName

				if (!actionRoleMap.size()) {
					grailsApplication.controllerClasses.each { controller ->
						findControllerAnnotation(controller)
					}
				}

				if (params.controller == null) {
					redirect(controller:"googleAuth")
					return true
				} else if (!session.user && isSecuredResource(controllerName, curActionName)) {
					redirect(controller:"googleAuth")
					return false
				} else if (session.user && isSecuredResource(controllerName, curActionName) 
							&& !authorized(session.user.role, controllerName, curActionName)) {
					redirect(controller:"errors", action:"accessDenied")
					return false
				}
			}
		}
	}
	
	def private isSecuredResource(controller, action) {
		actionRoleMap.getAt(controller)?.getAt(action)?.size() > 0
	}
	
	def private authorized(userRole, controller, action) {
		actionRoleMap.getAt(controller)?.getAt(action)?.contains(userRole)
	}

	def private findControllerAnnotation(controller) {
		def clazz = controller.getClazz()
		def controllerName = WordUtils.uncapitalize(controller.getName())
		
		def actionRoles = findActionRoles(clazz)
		if (actionRoles != null)
			actionRoleMap.putAt controllerName, actionRoles
			
		actionRoleMap
	}
	
	def private findActionRoles(clazz) {
		def actionRoles = [:]
		
		Secure typeAnnotation = clazz.getAnnotation(Secure.class)
		if (typeAnnotation) {
			for (field in clazz.getDeclaredFields()) {
				if (field.getName() != "metaClass") // to avoid GroovyCastException
					actionRoles.putAt field.getName(), typeAnnotation.value() as Set
			}
		} else {
			for (field in clazz.getDeclaredFields()) {
				Secure annotation = field.getAnnotation(Secure.class)
				if (annotation != null)
					actionRoles.putAt field.getName(), annotation.value() as Set
			}
		}

		actionRoles
	}
}
