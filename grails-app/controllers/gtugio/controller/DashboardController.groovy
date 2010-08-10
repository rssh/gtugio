package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 

class DashboardController {

	@Secure([Role.ROLE_OPENID])
    def index = { render 'access granted' }
}
