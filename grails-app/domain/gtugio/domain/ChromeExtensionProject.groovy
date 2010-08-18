package gtugio.domain

import gtugio.configuration.ApplicationKind 

class ChromeExtensionProject extends Project {

	String kind = ApplicationKind.CHROME_EXTENSION
	String icon = "default_chrome_extension_icon.png"
	
	String extensionURL
	
    static constraints = {
		extensionURL(nullable:true, blank:false)
    }
}
