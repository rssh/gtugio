package gtugio.taglib

import gtugio.configuration.PropertyName 
import gtugio.service.PropertyService 

class CustomTagLib {
	
	def dateFormat = { attrs, body ->
		out << new java.text.SimpleDateFormat(attrs.format).format(attrs.date)
	}
	
	def metatags = { attrs, body ->
		def title = attrs?.title ? "${PropertyService.getProperty(PropertyName.SITE_TITLE)} / ${attrs.title}" : PropertyService.getProperty(PropertyName.SITE_TITLE)
		def keywords = attrs?.keywords ? attrs.keywords : PropertyService.getProperty(PropertyName.SITE_KEYWORDS)
		def description = attrs.description ? attrs.description : PropertyService.getProperty(PropertyName.SITE_DESCRIPTION)
	
		out << "<meta charset=\"utf-8\">\n" +
				"<meta name=\"author\" content=\"${PropertyService.getProperty(PropertyName.AUTHOR_NAME)}\" />\n" +
				"<title>${title}</title>\n" +
				"<meta name=\"keywords\" content=\"${keywords}\">\n" +
				"<meta name=\"description\" content=\"${description}\">\n" +
				"<meta name=\"application-name\" content=\"${PropertyService.getProperty(PropertyName.SITE_TITLE)}\">\n" +
				"<meta name=\"application-url\" content=\"${PropertyService.getProperty(PropertyName.SITE_URL)}\">"
	}
}
