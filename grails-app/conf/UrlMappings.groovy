class UrlMappings {

	static excludes = ["/robots.txt", "/images/*", "/css/*"]

	static mappings = {
		/* main dashboard */
		"/"(controller:"dashboard")
		
		/* sitemap.xml generator */
		"/sitemap"(controller:"sitemap")
		
		/* information pages */
		"/info/$page"(controller:"page")
		
		/* articles */
		"/blog/$chapter?/$slug?"(controller:"article")

		"/authenticate/$action?"(controller:"googleAuth")

		"/project_images/$action/$project/$name"(controller:"projectImages")

		/* error handling */
		"/errors/$action"(controller:"errors")
		"500"(controller:"errors", view:"serverError")
		"404"(controller:"errors", view:"pageNotFound")
		"403"(controller:"errors", view:"accessDenied")
				
		/* for all others mappings use this rule */
		"/$controller/$action?/$id?"{
			constraints {
			}
		}
	}
}
