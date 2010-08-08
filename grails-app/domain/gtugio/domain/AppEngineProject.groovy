package gtugio.domain

class AppEngineProject extends Project {

	String applicationUrl
	
    static constraints = {
		applicationUrl(blank:false)
    }
}
