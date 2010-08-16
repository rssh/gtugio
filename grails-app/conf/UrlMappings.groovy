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
		"/developer/$action?/$id?"(controller:"developer")
		
		/* articles */
		"/blog/$chapter?/$slug?"(controller:"article")

		/* projects */
		"/projects/$action?/$id?"(controller:"project")
		
		/* moderator area */
		"/moderator/$controller/$action?/$id?"{}

		"/authenticate/$action?"(controller:"googleAuth")
		
		/* error handling */
		"/errors/$action"(controller:"errors")
		"500"(controller:"errors", view:"serverError")
		"404"(controller:"errors", view:"pageNotFound")
		"403"(controller:"errors", view:"accessDenied")
	}
}
