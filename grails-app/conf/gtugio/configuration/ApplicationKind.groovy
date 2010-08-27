package gtugio.configuration

class ApplicationKind {

	def static final ANDROID = "android"
	def static final CHROME_EXTENSION = "chrome_extension"
	def static final CHROME_APP = "chrome_application"
	def static final APP_ENGINE = "app_engine"
	def static final LIBRARY = "library"
	
	def static asMap() {
		LinkedHashMap map = new LinkedHashMap()
		map.putAt ANDROID, "Android"
		map.putAt CHROME_EXTENSION, "Chrome extension"
		map.putAt CHROME_APP, "Chrome application"
		map.putAt APP_ENGINE, "App Engine"
		map.putAt LIBRARY, "Library"
		
		map
	}
}
