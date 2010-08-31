package gtugio.domain

class Comment {

	User user
	Project project
	String text
	Date posted = new Date()
	
	static constraints = {
		user(nullable:false, blank:false)
		project(nullable:false, blank:false)
		text(nullable:false, blank:false)
	}
	
	static mapping = {
		text type:"text"
		sort posted:"desc"
		
		cache usage:"read-write"
	}
	
	static indexes = {
		posted()
	}
}
