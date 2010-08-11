package gtugio.service

import gtugio.domain.User 

class UserService {

	def findUser = { email ->
		User.findByEmail(email)
	}
}
