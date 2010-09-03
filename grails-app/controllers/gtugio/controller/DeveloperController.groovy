package gtugio.controller

import gtugio.configuration.ApplicationKind

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure
import gtugio.domain.Project 

@Secure([Role.USER, Role.MODERATOR, Role.ADMIN])
class DeveloperController {
	
    static navigation = [
        [
            group: "developer_aside",
            order: 1,
            title: "Publish your project",
            action: "dashboard"
        ]
    ]
	
    def index = {
        redirect(action:"dashboard")
    }
	
    def dashboard = {
        def projects = Project.withCriteria {
            user {
                eq("email", session.user.email)
            }
        }
		
        [ projects : projects, appKinds : ApplicationKind.asMap() ]
    }
	
    def profile = {
        render "profile"
    }
	
    def publish = {
        def project
		
        if (params.kind) {
            withForm {
                project = Project.getInstanceByKind(params.kind)
				
                params.user = session.user
                params.status = "pending"
				
                project.properties = params
				
                if (!project.hasErrors() && project.save(flush: true)) {
                    // TODO: Send e-mail notify for approve
					
                    flash.message = "${message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), project.id])}"
                    redirect(controller: "developer", action: "dashboard")
                }
            }
        } else {
            project = Project.getInstanceByKind(params.id)
        }
		
        [ project : project]
    }
	
    def save_draft = {
        def project
		
        withForm {
            project = Project.getInstanceByKind(params.kind)
			
            params.user = session.user
            params.status = "draft"
			
            project.properties = params
			
            if (!project.hasErrors() && project.save(flush: true)) {
                flash.message = "${message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), project.id])}"
                redirect(controller: "developer", action: "dashboard")
            }
        }

        [ project : project ]
    }
	
    def discard = {
        redirect(controller: "developer", action: "dashboard")
    }
	
    /*def preview = {
        if (params.kind) {
            withForm {
                def project = params.id ? Project.get(params.id) : Project.getInstanceByKind(params.kind)
                project.properties = params

                if (!project.hasErrors() && project.save(flush:true)) {
					render(view: "preview", model: [ project : project ])
                } else {
					render(view: params.from, model: [ project : project ])
					return false
				}
            }
        } else {
            redirect(controller: "developer", action: "dashboard")
        }
    }*/
	
    def unpublish = {
        withForm {
            if (params.project_unpublish_id) {
                params.project_unpublish_id = params.project_unpublish_id as int
                def project = Project.get(params.project_unpublish_id)
				
				if (session.user.id != project?.user?.id) {
					render (view:"/errors/recordNotFound")
					return false
				}
				
                project.status = "draft"
				
                if (!project.hasErrors() && project.save(flush:true)) {
                    flash.message = "Project has been unpublished."
                } else {
                    flash.message = "Error while unpublishing project."
                }
            }
        }
		
        redirect(controller: "developer", action: "dashboard")
    }
	
    def edit = {
		// TODO: add version integrity check
		try {
			params.id = params.id as int
	        def project = Project.get(params.id)

			if (session.user.id != project?.user?.id) {
				render (view:"/errors/recordNotAccessible")
				return false
			}
			
			if (params.kind) {
				withForm {
					project.properties = params
					
					if (!project.hasErrors() && project.save(flush:true)) {
						flash.message = "Project has been updated."
						redirect(controller: "developer", action: "dashboard")
					} else {
						flash.message = "Error while updating project."
					}
				}
			}
			
			[ project: project ]

		} catch (NumberFormatException e) {
			render (view:"/errors/recordNotAccessible")
			return false
		}
    }
	
	def remove = {
		withForm {
			if (params.project_delete_id) {
				params.project_delete_id = params.project_delete_id as int
				def project = Project.get(params.project_delete_id)
				
				if (session.user.id != project?.user?.id) {
					render (view:"/errors/recordNotFound")
					return false
				}
				
				try {
					project.delete(flush:true)
					flash.message = "Project successfully removed."
				} catch (org.springframework.dao.DataIntegrityViolationException e) {
					flash.message = "Could not delete project ${project.name}."
				}
			}
		}
		
		redirect(controller: "developer", action: "dashboard")
	}
}