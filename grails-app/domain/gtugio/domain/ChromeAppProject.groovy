package gtugio.domain

class ChromeAppProject extends Project {

	String appMarketPlaceURL
	
    static constraints = {
		appMarketPlaceURL(blank:false)
    }
}
