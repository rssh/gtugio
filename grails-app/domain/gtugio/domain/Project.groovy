package gtugio.domain

import gtugio.configuration.ApplicationKind 

class Project {

	User user
	List contributors

	static hasMany = [contributors:Integer]
		
	String name
	String description
	String detailedDescription
	String icon = "/images/default_app_icon.png"
	String appversion
	String website
	String support
	
	String kind = ApplicationKind.LIBRARY
	
	String repository
	
	String status = "draft"
	
	String approvedBy
	Date approveDate
	
	String declinedBy
	String declineDate
	String declineReason
	
	Date published = new Date()
	Date updated = new Date()
	
	Integer staged
	
	def static getInstanceByKind(kind) {
		def project
		
		switch (kind) {
			case ApplicationKind.ANDROID:
			project = new AndroidProject()
			break
			
			case ApplicationKind.CHROME_EXTENSION:
			project = new ChromeExtensionProject()
			break
			
			case ApplicationKind.CHROME_APP:
			project = new ChromeAppProject()
			break
			
			case ApplicationKind.APP_ENGINE:
			project = new AppEngineProject()
			break
			
			case ApplicationKind.LIBRARY:
			default:
			project = new Project()
			break
		}
		
		project
	}
	
	def beforeInsert = {
		updated = new Date()
	}
	
	def beforeUpdate = {
		updated = new Date()
	}
	
    static constraints = {
		user(nullable:false, blank:false)
		name(maxSize:50, blank:false)
		description(maxSize:128, blank:false)
		detailedDescription(maxSize:2000, blank:false)
		icon(blank:false)
		appversion(maxSize:16, blank:false)
		website(blank:true, nullable:true)
		support(blank:true, nullable:true)
		kind(blank:false, inList:[ApplicationKind.ANDROID, ApplicationKind.APP_ENGINE, 
		                          ApplicationKind.CHROME_APP, ApplicationKind.CHROME_EXTENSION, ApplicationKind.LIBRARY])
		repository(blank:true, nullable:true)
		status(blank:false, inList:["published", "draft", "pending", "approved", "declined"])
		
		approvedBy(nullable:true)
		approveDate(nullable:true)
		declinedBy(nullable:true)
		declineDate(nullable:true)
		declineReason(nullable:true)
		
		published(nullable:true)
		updated(nullable:true)
		
		staged(nullable:true, blank:true)
    }
	
	static mapping = {
		cache usage:"read-write"
	}
}
