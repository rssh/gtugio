package gtugio.domain

class ProjectCategory {

	String name
	String slug

	static constraints = {
		name(blank:false)
		slug(blank:false, unique:true)
	}
	
	static mapping = {
		cache usage:"read-write"
	}
}
