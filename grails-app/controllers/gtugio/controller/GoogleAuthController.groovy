package gtugio.controller

import gtugio.domain.User 
import org.codehaus.groovy.grails.commons.ConfigurationHolder 
import org.openid4java.consumer.ConsumerManager 
import org.openid4java.consumer.VerificationResult 
import org.openid4java.discovery.DiscoveryInformation 
import org.openid4java.message.AuthRequest 
import org.openid4java.message.AuthSuccess 
import org.openid4java.message.ParameterList 
import org.openid4java.message.ax.AxMessage 
import org.openid4java.message.ax.FetchRequest 
import org.openid4java.message.ax.FetchResponse 

class GoogleAuthController {

	static ConsumerManager consumerManager
	
	def config = ConfigurationHolder.config
	
	def userService
	
	def index = {
		// show the login page
		params['returnurl'] = params['returnurl'] ? params['returnurl'] : "/"
		session.setAttribute "returnurl", params['returnurl']
		
		if (session.user) {
			render 'You are already signed. Want to sign out?'
		} else {
			// show login page
		}
	}
	
	def signin = {
		if (!session.user) {
		
			consumerManager = new ConsumerManager()
			
			def discoveries = consumerManager.discover("https://www.google.com/accounts/o8/id")
			DiscoveryInformation discovered = consumerManager.associate(discoveries);
			session.setAttribute "openid-disc", discovered

			AuthRequest authReq = consumerManager.authenticate(discovered, config.gtugio.properties.auth.openid.returnURL);
			authReq.setRealm config.gtugio.properties.auth.openid.realm

			FetchRequest fetch = FetchRequest.createFetchRequest();
			fetch.addAttribute("email", "http://schema.openid.net/contact/email", true);
			fetch.addAttribute("firstname", "http://axschema.org/namePerson/first", true);
			fetch.addAttribute("lastname", "http://axschema.org/namePerson/last", true);
			
			authReq.addExtension(fetch)
			
			redirect(url:authReq.getDestinationUrl(true))
		} else {
			redirect(controller:"googleAuth")
		}
	}
	
	def signout = {
		session.user = null
		redirect(controller:"dashboard")
	}
	
	def verify = {
		ParameterList parameterList = new ParameterList(request.getParameterMap())
		DiscoveryInformation discovered = (DiscoveryInformation) session.getAttribute("openid-disc")

		def receivingURL = request.getQueryString() && request.getQueryString().length() > 0 ?
						"${config.gtugio.properties.auth.openid.returnURL}?${request.getQueryString()}" : 
						"${config.gtugio.properties.auth.openid.returnURL}"

		VerificationResult verification = consumerManager.verify(receivingURL, parameterList, discovered)

		if (verification.getVerifiedId()) {
			AuthSuccess authSuccess = (AuthSuccess) verification.getAuthResponse()
			
			if (authSuccess.hasExtension(AxMessage.OPENID_NS_AX)) {
				FetchResponse fetchResp = (FetchResponse) authSuccess.getExtension(AxMessage.OPENID_NS_AX)
				
				def email = fetchResp.getAttributeValues("email")[0] 
				def user = User.findByEmail(email)

				if (!user) {
					def firstname = fetchResp.getAttributeValue("firstname")
					def lastname = fetchResp.getAttributeValue("lastname")
					
					user = new User(name:"${firstname} ${lastname}", email:email, nickname:"${firstname} ${lastname}",
						registrationDate: new Date()).save(flush:true)
						
					// TODO: Send reg notify to user and moderators
				}

				session.user = user
			}
			
			def returnurl = session.getAttribute("returnurl")
			session.removeAttribute "returnurl"

			redirect(uri: returnurl)
		} else {
			redirect(controller:"errors", action:"accessDenied")
		}
	}
}
