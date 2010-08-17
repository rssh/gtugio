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
						mapSecurityAnnotations(controller)
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

	def private void mapSecurityAnnotations(controller) {
		def clazz = controller.getClazz()
		def controllerName = WordUtils.uncapitalize(controller.getName())
		
		def controllerRoles = findControllerRoles(clazz)
		def actionRoles = findActionRoles(clazz)
		
		compileActionRoleMap controllerName, controllerRoles, actionRoles
	}
	
	def private void compileActionRoleMap(controllerName, controllerRoles, actionRoles) {
		actionRoleMap.putAt controllerName, [:]
		
		def rolesMap = [:]
		controllerRoles.each {
			def roles = actionRoles.getAt(it.key) ? actionRoles.getAt(it.key) : [] as Set
			rolesMap.putAt it.key, it.value + roles
		}
		
		actionRoleMap.putAt controllerName, rolesMap
	}
	
	def private findControllerRoles(clazz) {
		def controllerRoles = [:]
		
		def roles = clazz.getAnnotation(Secure.class)?.value() as Set
		if (!roles) roles = [] as Set

		for (field in clazz.getDeclaredFields()) {
			if (field.getName() != "metaClass") // to avoid GroovyCastException
				controllerRoles.putAt field.getName(), roles
		}
		
		controllerRoles
	}
	
	def private findActionRoles(clazz) {
		def actionRoles = [:]
		
		for (field in clazz.getDeclaredFields()) {
			def roles = field.getAnnotation(Secure.class)?.value() as Set
			if (roles)
				actionRoles.putAt field.getName(), roles
		}

		actionRoles
	}
}
