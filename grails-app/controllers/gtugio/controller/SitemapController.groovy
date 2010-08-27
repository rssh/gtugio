package gtugio.controller

import groovy.xml.MarkupBuilder 
import gtugio.configuration.PropertyName 
import gtugio.service.PropertyService 
import java.text.SimpleDateFormat 

class SitemapController {

	def pageService
	
	def articleService
	
    def index = {
		def writer = new StringWriter()
		def xml = new MarkupBuilder(writer)
		
		def lastArticleModificationDate = articleService.getLastModifiedDate()
		def currentModificationDate = new Date()
		
		def articles = articleService.getAllPublishedAndSortedByDateBy("desc")
		def pages = pageService.all()
		
		xml.urlset(xmlns:"http://www.sitemaps.org/schemas/sitemap/0.9") {
			url() { // home page
				loc(PropertyService.getProperty(PropertyName.SITE_URL))
				lastmod(formatDate(currentModificationDate))
				changefreq("daily")
				priority("1.0")
			}
			
			url() { // blog page
				loc(PropertyService.getProperty(PropertyName.SITE_URL)+"/blog")
				lastmod(formatDate(lastArticleModificationDate))
				changefreq("daily")
				priority("0.8")
			}
			
			articles.each { article ->
				url() {
					loc("${PropertyService.getProperty(PropertyName.SITE_URL)}${article.permalink}")
					lastmod(formatDate(article.updated))
					changefreq("yearly")
					priority("0.8")
				}
			}
			
			pages.each { page ->
				url() {
					loc("${PropertyService.getProperty(PropertyName.SITE_URL)}${page.permalink}")
					lastmod(formatDate(page.updated))
					if (page.changefreq) changefreq(page.changefreq)
					if (page.priority) priority(page.priority)
				}
			}
		}
		
		render text:writer.toString(), contentType:"text/xml", encoding:"UTF-8"
	}
	
	def formatDate = { date ->
		new SimpleDateFormat("yyyy-MM-dd").format(date)
	}
}
