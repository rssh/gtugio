package gtugio.service

import gtugio.domain.Project 

class ProjectService {

    static transactional = true

    def saveDraft(params, user) {
		def projectStaged = Project.findByStaged(params.id)
		if (!projectStaged)
			projectStaged = Project.getInstanceByKind(params.kind)
			
		projectStaged.properties = params
		projectStaged.properties.user = user
		projectStaged.properties.status = "draft"
		
		if (!projectStaged.hasErrors()) {
			projectStaged.save(flush:true)
		}
		
		projectStaged
    }
}
