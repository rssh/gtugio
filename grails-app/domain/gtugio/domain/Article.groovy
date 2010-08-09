package gtugio.domain

import gtugio.utils.TextUtils 
import java.util.Date;

class Article {

	String title
	String content
	String contentHtml
	ArticleChapter chapter
	String slug
	
	Date published
	Date updated = new Date()
	
	String status = "draft"
	
	String approvedBy
	Date approveDate
	
	String declinedBy
	String declineDate
	String declineReason
	
    def beforeInsert = {
		updated = new Date()
	}

	def beforeUpdate = {
		updated = new Date()
	}
	
	def getIntro() {
		TextUtils.safeMarkup(contentHtml?.split("<splitter/>")[0].trim())
	}
	
	def getSummary() {
		TextUtils.truncateWords(TextUtils.stripTags(contentHtml?.split("<splitter/>")[0].trim()), 50)
	}
	
	def getPermalink() {
		"/blog/${chapter.slug}/${slug}"
	}
	
	static constraints = {
		title(blank:false)
		slug(blank:false, unique:true)
		published(nullable:true)
		updated(nullable:true)
		chapter(nullable:true)
		content(blank:false)
		contentHtml(blank:true)
		status(blank:false, inList:["draft", "published", "approved", "declined"])
		
		approvedBy(nullable:true)
		approveDate(nullable:true)
		declinedBy(nullable:true)
		declineDate(nullable:true)
		declineReason(nullable:true)
	}

	static mapping = {
		sort published:"desc"
		content type:"text"
		contentHtml type:"text"
	}
	
	static indexes = {
		published()
		status("chapter", "status")
	}
}
