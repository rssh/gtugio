package gtugio.domain

import gtugio.configuration.ApplicationKind 

class ChromeAppProject extends Project {

	String kind = ApplicationKind.CHROME_APP
	String icon = "/images/default_chromeapp_icon.png"
	
	String appMarketPlaceURL
	
    static constraints = {
		appMarketPlaceURL(blank:false)
    }
}