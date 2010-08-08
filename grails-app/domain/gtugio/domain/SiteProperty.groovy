package gtugio.domain

class SiteProperty {

	String name
	String value
	
	static constraints = {
		name(blank:false, unique:true)
		value(blank:false)
	}
}
