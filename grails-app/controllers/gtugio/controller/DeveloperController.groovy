package gtugio.controller

import gtugio.configuration.ApplicationKind

import gtugio.configuration.auth.Role
import gtugio.core.auth.Secure
import gtugio.domain.Project 

@Secure([Role.USER, Role.MODERATOR, Role.ADMIN])
class DeveloperController {
	
    def projectService
	
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
            isNull("staged")
            user {
                eq("email", session.user.email)
            }
        }
		
        [ projects : projects, appKinds : ApplicationKind.asMap() ]
    }
	
    def publish = {
        if (request.getMethod() == "POST" && params.kind) {
            withForm {
                return process_new(params, session.user)
            }
        }
		
        [ project : Project.getInstanceByKind(params.id)]
    }
	
    def protected process_new = { params, user ->
        def project = Project.getInstanceByKind(params.kind)
		
        project.properties = params
        project.properties.user = user
        project.properties.status = "pending"
		
        if (!project.hasErrors() && project.save(flush: true)) {
            // TODO: Send e-mail notify for approve
			
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), project.id])}"
            return redirect(controller: "developer", action: "dashboard")
        }
    }
	
    def save_draft = {
        if (request.getMethod() != "POST") {
            return render(view:"/errors/recordNotAccessible")
        }
		
        withForm {
            params.id = params.id as int
			
            if (!params.id)
                return process_new(params, session.user)
			
            def projectOrig = Project.get(params.id)
            if (session.user.id != projectOrig?.user?.id)
                return render(view:"/errors/recordNotAccessible")
		
            def projectStaged = Project.findByStaged(params.id)
            if (!projectStaged)
                projectStaged = Project.getInstanceByKind(params.kind)
				
            projectStaged.properties = params
            projectStaged.properties.user = session.user
            projectStaged.properties.status = "draft"
			
            if (!projectStaged.hasErrors() && projectStaged.save(flush:true)) {
                return redirect(controller: "developer", action: "dashboard")
            } else {
                return render(view: "edit", model: [ projectStaged : projectStaged, projectOrig : projectOrig ])
            }
        }
    }
	
    def edit = {
        try {
            params.id = params.id as int
        } catch (NumberFormatException) {
            return render (view:"/errors/recordNotAccessible")
        }
		
        def projectOrig = Project.get(params.id)
        if (session.user.id != projectOrig?.user?.id)
            return render (view:"/errors/recordNotAccessible")
		
        /* create staged project for edit */
        def projectStaged = Project.findByStaged(params.id)
        if (!projectStaged) {
            projectStaged = Project.getInstanceByKind(projectOrig.kind)
            projectStaged.properties = projectOrig.properties
			
            projectStaged.properties.contributors = null
            projectStaged.properties.staged = projectOrig.id
            projectStaged.save(flush:true)
        }
		
        if (request.getMethod() == "POST") {
            withForm {
                projectStaged.properties = params

                if (!projectStaged.hasErrors()) {
                    projectOrig.properties = params
					
                    projectOrig.save(flush:true)
                    projectStaged.delete(flush:true)

                    flash.message = "Project has been updated."
                    return redirect(controller: "developer", action: "dashboard")
                } else {
                    flash.message = "Error while updating project."
                }
            }
        }
			
        [ projectStaged: projectStaged, projectOrig : projectOrig ]
    }
	
    def discard = {
        redirect(controller: "developer", action: "dashboard")
    }
	
    def unpublish = {
        if (request.getMethod() == "POST" && params.project_unpublish_id) {
            params.project_unpublish_id = params.project_unpublish_id as int
            def project = Project.get(params.project_unpublish_id)

            if (session.user.id != project?.user?.id) {
                return render (view:"/errors/recordNotAccessible")
            }

            def projectStaged = Project.findByStaged(project.id)
            if (projectStaged) {
                project.properties = projectStaged.properties
                project.properties.staged = null

                projectStaged.delete(flush:true)
            }

            project.properties.status = "draft"

            if (!project.hasErrors() && project.save(flush:true)) {
                flash.message = "Project has been unpublished."
            } else {
                flash.message = "Error while unpublishing project."
            }
        }
		
        redirect(controller: "developer", action: "dashboard")
    }
	
    def remove = {
    	withForm {
            if (request.getMethod() == "POST" && params.project_delete_id) {
                params.project_delete_id = params.project_delete_id as int
                def project = Project.get(params.project_delete_id)
    			
                if (session.user.id != project?.user?.id) {
                    return render (view:"/errors/recordNotAccessible")
                }
    			
                try {
                    def projectStaged = Project.findByStaged(project.id)
                    if (projectStaged) projectStaged.delete(flush:true)
    				
                    project.delete(flush:true)
                    flash.message = "Project successfully removed."
                } catch (org.springframework.dao.DataIntegrityViolationException e) {
                    flash.message = "Could not delete project ${project.name}."
                }
            }
    	}
    	
    	redirect(controller: "developer", action: "dashboard")
    }
	
    /*def profile = {
    render "profile"
    }
	
    def preview = {
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
}