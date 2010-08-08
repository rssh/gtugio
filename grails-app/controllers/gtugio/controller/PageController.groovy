package gtugio.controller

import gtugio.service.PageService 

class PageController {

	def PageService pageService
	
    def index = {
		def info = pageService.info(params['page'])
		if (!info) redirect(controller: "errors", action:"pageNotFound")

        [pageinfo:info]
	}
}
