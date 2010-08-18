package gtugio.controller

import gtugio.configuration.auth.Role
import gtugio.core.auth.Secure 
import gtugio.domain.Project 

@Secure([Role.USER, Role.MODERATOR, Role.ADMIN])
class DeveloperController {

	static navigation = [
		[
			group: "developer_aside",
			order: 1,
			title: "Publish your project",
			action: "publish",
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
		
		[ projects:projects ]
	}
	
	def profile = {
		render "profile"
	}
	
	def publish = {
		render 'publishing'
	}
}
