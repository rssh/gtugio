package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 
import gtugio.domain.ChromeExtensionProject 

@Secure([Role.ADMIN])
class ChromeExtensionProjectController {

	def scaffold = ChromeExtensionProject
	
	static navigation = [
		[
			group: "admin",
			order: 4,
			title:'Chrome Extensions projects',
			action: 'list',
			idVisible: { session.user?.role == Role.ADMIN }
		]
	]
}
