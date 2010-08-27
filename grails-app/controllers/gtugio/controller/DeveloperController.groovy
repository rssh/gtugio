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
		def project
		def template
		
		switch (params.id) {
			case ApplicationKind.ANDROID:
			project = new AndroidProject()
			template = ApplicationKind.ANDROID
			break
			
			case ApplicationKind.CHROME_EXTENSION:
			project = new ChromeExtensionProject()
			template = ApplicationKind.CHROME_EXTENSION
			break
			
			case ApplicationKind.CHROME_APP:
			project = new ChromeAppProject()
			template = ApplicationKind.CHROME_APP
			break
			
			case ApplicationKind.APP_ENGINE:
			project = new AppEngineProject()
			template = ApplicationKind.APP_ENGINE
			break
			
			case ApplicationKind.LIBRARY:
			default:
			project = new Project()
			break
		}
		
		[ project : project, template : template ]
	}
}
