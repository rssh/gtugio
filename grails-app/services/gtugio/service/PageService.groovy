package gtugio.service

import gtugio.domain.Page 

class PageService {

    static transactional = true

    def info(slug) {
		Page.findBySlug(slug)
	}
    
    def navigation = {
		Page.findAllByShowInMenu(true)
	}
    
    def all = {
		Page.list()
	}
}
