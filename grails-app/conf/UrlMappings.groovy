class UrlMappings {

	static excludes = ["/robots.txt", "/images/*", "/css/*"]

	static mappings = {
		/* main dashboard */
		"/"(controller:"dashboard")
		
		/* sitemap.xml generator */
		"/sitemap"(controller:"sitemap")
		
		/* information pages */
		"/info/$page"(controller:"page")
		
		/* developer area (publish apps/publish articles) */
		"/developer/$action"(controller:"developer")
		
		/* articles */
		"/blog/$chapter?/$slug?"(controller:"article")

		/* projects */
		"/projects/$action?/$id?"(controller:"project")
		
		/* moderator area */
		"/moderator/$controller/$action?/$id?"{}

		"/authenticate/$action?"(controller:"googleAuth")
		
		/* error handling */
		"/errors/$action"(controller:"errors")
		"500"(view:"/errors/serverError")
		"404"(view:"/errors/pageNotFound")
		"403"(view:"/errors/accessDenied")
	}
}
