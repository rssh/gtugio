package gtugio.controller

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure 


class DashboardController {

	@Secure(["openid"])
    def index = { render 'access granted' }
}
