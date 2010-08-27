package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 
import gtugio.domain.AndroidProject 

class AndroidProjectController {

	def scaffold = AndroidProject
	
	static navigation = [
		[
			group: "admin",
			order: 1,
			title:'Android projects',
			action: 'list',
			isVisible: { session.user?.role == Role.ADMIN }
		]
	]
}
