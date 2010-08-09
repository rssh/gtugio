package gtugio.domain

import gtugio.configuration.ApplicationKind 

class AppEngineProject extends Project {

	String kind = ApplicationKind.APP_ENGINE
	String icon = "/images/default_appengine_icon.png"
	
	String applicationUrl
	
    static constraints = {
		applicationUrl(blank:false)
    }
}
