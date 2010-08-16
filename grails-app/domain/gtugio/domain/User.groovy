package gtugio.domain

import gtugio.configuration.auth.Role 

class User {

	String name
	String nickname
	String email
	Date registrationDate
	
	Role role = Role.USER
	
	static constraints = {
		name(blank:true, nullable:false)
		nickname(blank:false, nullable:false)
		email(blank:false, nullable:false)
		registrationDate(nullable:false)
		role(blank:false, nullable:false, inList:[Role.USER, Role.MODERATOR, Role.ADMIN])
	}
	
	static mapping = {
		role type: Role
	}
}
