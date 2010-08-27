package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 
import gtugio.domain.AppEngineProject 

@Secure([Role.ADMIN])
class AppEngineProjectController {

	def scaffold = AppEngineProject
	
	static navigation = [
		[
			group: "admin",
			order: 2,
			title:'AppEngine projects',
			action: 'list',
			isVisible: { session.user?.role == Role.ADMIN }
		]
	]
}
