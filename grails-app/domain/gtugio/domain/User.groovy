package gtugio.domain

import gtugio.configuration.auth.Role 

class User {

	String name
	String nickname
	String email
	Date registrationDate
	
	String role = Role.ROLE_OPENID
	
	static constraints = {
		name(blank:true, nullable:false)
		nickname(blank:false, nullable:false)
		email(blank:false, nullable:false)
		registrationDate(nullable:false)
		role(blank:false, nullable:false, inList:[Role.ROLE_OPENID, Role.ROLE_MODERATOR, Role.ROLE_ADMIN])
	}
}
