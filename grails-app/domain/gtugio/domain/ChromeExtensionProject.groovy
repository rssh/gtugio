package gtugio.domain

import gtugio.configuration.ApplicationKind 

class ChromeExtensionProject {

	String kind = ApplicationKind.CHROME_EXTENSION
	String icon = "/images/default_chrome_extension_icon.png"
	
	String extensionURL
	
    static constraints = {
		extensionURL(blank:false)
    }
}
