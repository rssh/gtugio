package gtugio.domain

import gtugio.configuration.ApplicationKind 

class AndroidProject extends Project {

	String kind = ApplicationKind.ANDROID
	
	String icon = "/images/default_android_icon.png"
	String qrcode
	String marketUrl
	
    static constraints = {
		qrcode(nullable:true, blank:true)
		marketUrl(nullable:true, blank:true)
    }
}
