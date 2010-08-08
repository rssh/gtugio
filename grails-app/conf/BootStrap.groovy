import gtugio.configuration.PropertyName 
import gtugio.domain.SiteProperty 
import org.codehaus.groovy.grails.commons.ConfigurationHolder 

class BootStrap {

	def config = ConfigurationHolder.config
	
    def init = { servletContext ->
    	
    	def installed = SiteProperty.findByName(PropertyName.INSTALLED)
    	if (!installed.equals("true")) {
			/* set default properties */
			new SiteProperty(name:PropertyName.INSTALLED, value:true).save(flush:true)
			
			new SiteProperty(name:PropertyName.AUTHOR_NAME, value:config.gtugio.properties.defaults.author.name).save(flush:true)
			new SiteProperty(name:PropertyName.AUTHOR_EMAIL, value:config.gtugio.properties.defaults.author.email).save(flush:true)
			
			new SiteProperty(name:PropertyName.FEED_TITLE, value:config.gtugio.properties.defaults.feed.title).save(flush:true)
			new SiteProperty(name:PropertyName.FEED_DESCRIPTION, value:config.gtugio.properties.defaults.feed.description).save(flush:true)
			new SiteProperty(name:PropertyName.RSS_CONTENT_TYPE, value:config.gtugio.properties.defaults.feed.contentType).save(flush:true)
			
			new SiteProperty(name:PropertyName.SITE_URL, value:config.gtugio.properties.defaults.url).save(flush:true)
			new SiteProperty(name:PropertyName.SITE_TITLE, value:config.gtugio.properties.defaults.title).save(flush:true)
			new SiteProperty(name:PropertyName.SITE_KEYWORDS, value:config.gtugio.properties.defaults.keywords).save(flush:true)
			new SiteProperty(name:PropertyName.SITE_DESCRIPTION, value:config.gtugio.properties.defaults.description).save(flush:true)
		}
    	
    	environments {
			production {
				
			}
			preproduction {
				
			}
			development {
				if (!installed) populateStubData()
			}
			test {
				if (!installed) populateStubData()
			}
		}
    }
	
	def private populateStubData = {
		
	}
	
    def destroy = {
    }
}
