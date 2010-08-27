package gtugio.controller

import gtugio.configuration.ApplicationKind

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure
import gtugio.domain.AndroidProject 
import gtugio.domain.AppEngineProject 
import gtugio.domain.ChromeAppProject 
import gtugio.domain.ChromeExtensionProject 
import gtugio.domain.Project 

@Secure([Role.USER, Role.MODERATOR, Role.ADMIN])
class DeveloperController {

	static navigation = [
		[
			group: "developer_aside",
			order: 1,
			title: "Publish your project",
			action: "dashboard"
		]
	]
	
    def index = {
		redirect(action:"dashboard")
	}

	def dashboard = {
		def projects = Project.withCriteria {
			user {
				eq("email", session.user.email)
			}
		}
		
		[ projects : projects, appKinds : ApplicationKind.asMap() ]
	}
	
	def profile = {
		render "profile"
	}
	
	def publish = {
		/*
		withForm {
			// good request
		}
		 */
		
		def project
		def kind
		
		switch (params.id) {
			case ApplicationKind.ANDROID:
			project = new AndroidProject()
			kind = ApplicationKind.ANDROID
			break
			
			case ApplicationKind.CHROME_EXTENSION:
			project = new ChromeExtensionProject()
			kind = ApplicationKind.CHROME_EXTENSION
			break
			
			case ApplicationKind.CHROME_APP:
			project = new ChromeAppProject()
			kind = ApplicationKind.CHROME_APP
			break
			
			case ApplicationKind.APP_ENGINE:
			project = new AppEngineProject()
			kind = ApplicationKind.APP_ENGINE
			break
			
			case ApplicationKind.LIBRARY:
			default:
			project = new Project()
			break
		}
		
		[ project : project, kind : kind ]
	}
	
	def preview = {
		render "preview"
	}
}
