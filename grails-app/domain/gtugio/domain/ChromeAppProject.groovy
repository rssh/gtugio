package gtugio.domain

import gtugio.configuration.ApplicationKind 

class ChromeAppProject extends Project {

	String kind = ApplicationKind.CHROME_APP
	String icon = "default_chromeapp_icon.png"
	
	String appMarketPlaceURL
	
    static constraints = {
		appMarketPlaceURL(nullable:true, blank:false)
    }
	
	static mapping = {
		cache usage:"read-write"
	}
}
