package gtugio.controller

import gtugio.core.auth.Secure 

@Secure(["user", "moderator", "admin"])
class DeveloperController {

	
    def index = {
		redirect(action:"dashboard")
	}

	def dashboard = {
		render "Hello. I'm a developer dashboard." 
	}
}
