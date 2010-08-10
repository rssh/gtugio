package gtugio.controller

import org.openid4java.consumer.ConsumerManager 
import org.openid4java.discovery.DiscoveryInformation 
import org.openid4java.message.AuthRequest 
import org.openid4java.message.ax.FetchRequest 

class GoogleAuthController {

	def defaultAction = "authenticate"
	
	ConsumerManager consumerManager
	
	def authenticate = {
		render ''
	}
	
	def signin = {
		consumerManager = new ConsumerManager()
		
		def discoveries = consumerManager.discover("https://www.google.com/accounts/o8/id")
		DiscoveryInformation discovered = consumerManager.associate(discoveries);
		
		session.setAttribute "openid-disc", discovered
		
		AuthRequest authReq = consumerManager.authenticate(discovered, "http://localhost:8080/gtugio/authenticate");
		
		FetchRequest fetch = FetchRequest.createFetchRequest();
		fetch.addAttribute("email", "http://schema.openid.net/contact/email", true);
		fetch.addAttribute("firstname", "http://axschema.org/namePerson/first", true);
		fetch.addAttribute("lastname", "http://axschema.org/namePerson/last", true);
		
		authReq.addExtension(fetch)
		
		redirect(url:authReq.getDestinationUrl(true))
	}
}
