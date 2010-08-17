package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 
import gtugio.domain.AndroidProject 

@Secure([Role.ADMIN])
class AndroidProjectController {

	def scaffold = AndroidProject
	
	static navigation = [
		[
			group: "admin",
			order: 1,
			title:'Android projects',
			action: 'list',
			idVisible: { session.user?.role == Role.ADMIN }
		]
	]
}
