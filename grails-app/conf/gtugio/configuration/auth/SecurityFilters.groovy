package gtugio.configuration.auth

import gtugio.core.auth.Secure 
import org.apache.commons.lang.WordUtils 

class SecurityFilters {

	def private actionRoleMap = [:]
	
	def filters = {
		auth(controller: "*", action: "*") {
			before = {
				// get all controllers +
				// get all actions +
				// map actions and annotations +
				// get current controller and action name
				// check user cookies and session 
				// redirect to login if no cookies 
				// process request to openid pr with session expired
				// redirect to accessed action 
				def curActionName = actionName == null ? "index" : actionName
				
				grailsApplication.controllerClasses.each { controller ->
					findControllerAnnotation(controller)
				}

				if (params.controller == null) {
					redirect(controller:"errors", action:"accessDenied")
					return true
				} else if (session.user == null && isSecuredResource(controllerName, curActionName)) {
					redirect(controller:"errors", action:"accessDenied")
				
					// re-request openid auth from google
					return false
				} else if (session.user && !authorized(session.user.role, controllerName, curActionName)) {
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
	}
	
	def private findActionRoles(clazz) {
		def actionRoles = [:]
		
		for (field in clazz.getDeclaredFields()) {
			Secure annotation = field.getAnnotation(Secure.class)
			if (annotation != null) 
				actionRoles.putAt field.getName(), annotation.value() as Set
		}
		
		actionRoles
	}
}
