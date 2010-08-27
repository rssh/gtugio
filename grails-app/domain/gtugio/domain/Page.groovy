package gtugio.domain

import java.util.Date;

class Page {

	String title
	String name
	String keywords
	String description
	String content
	String contentHtml
	String slug
	
	Date updated = new Date()

	Float priority = 0.5
	String changefreq = "monthly"
	
	def beforeInsert = {
		updated = new Date()
	}
	
	def beforeUpdate = {
		updated = new Date()
	}
	
	def getPermalink = {
		"/info/${slug}"
	}
	
	boolean inMenu = false
	
	static constraints = {
		title(blank:false)
		name(blank:false)
		content(blank:false)
		contentHtml(blank:true)
		keywords(blank:true, nullable:true)
		description(blank:true, nullable:true)
		slug(blank:false, unique:true)
		priority(range:0.1..1.0)
		changefreq(inList:["always", "hourly", "daily", "weekly", "monthly", "yearly", "never"])
	}
	
	static mapping = {
		content type:"text"
		cache usage:"read-write"
	}
}
