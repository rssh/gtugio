package gtugio.domain

import gtugio.configuration.ApplicationKind 

class Project {

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
	
	Date published
	Date updated = new Date()
	
	def beforeInsert = {
		updated = new Date()
	}
	
	def beforeUpdate = {
		updated = new Date()
	}
	
    static constraints = {
		name(max:50, blank:false)
		description(max:128, blank:false)
		detailedDescription(max:2000, blank:false)
		icon(blank:false)
		appversion(max:16, blank:false)
		website(blank:true)
		support(blank:true)
		kind(blank:false, inList:[ApplicationKind.ANDROID, ApplicationKind.APP_ENGINE, 
		                          ApplicationKind.CHROME_APP, ApplicationKind.CHROME_EXTENSION, ApplicationKind.LIBRARY])
		repository(blank:false)
		status(blank:false, inList:["published", "draft", "approved", "desclined"])
		
		approvedBy(nullable:true)
		approveDate(nullable:true)
		declinedBy(nullable:true)
		declineDate(nullable:true)
		declineReason(nullable:true)
		
		published(nullable:true)
		updated(nullable:true)
    }
}
