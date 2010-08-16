package gtugio.controller

import gtugio.configuration.auth.Role
import gtugio.core.auth.Secure 

@Secure([Role.USER, Role.MODERATOR, Role.ADMIN])
class DeveloperController {

	
    def index = {
		redirect(action:"dashboard")
	}

	def dashboard = {
		render "Hello. I'm a developer dashboard."
	}
}
