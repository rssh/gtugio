package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 
import gtugio.domain.ChromeAppProject 

@Secure([Role.ADMIN])
class ChromeAppProjectController {

	def scaffold = ChromeAppProject
	
	static navigation = [
		[
			group: "admin",
			order: 3,
			title:'Chrome Applications projects',
			action: 'list',
			isVisible: { session.user?.role == Role.ADMIN }
		]
	]
}
