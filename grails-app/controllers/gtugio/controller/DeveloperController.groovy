package gtugio.controller

import gtugio.configuration.ApplicationKind

import gtugio.configuration.auth.Role 
import gtugio.core.auth.Secure
import gtugio.domain.AndroidProject 
import gtugio.domain.AppEngineProject 
import gtugio.domain.ChromeAppProject 
import gtugio.domain.ChromeExtensionProject 
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
		
		if (params.kind) {
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
		} else {
			project = Project.getInstanceByKind(params.id)
		}

		[ project : project ]
	}
	
	def discard = {
		redirect(controller: "developer", action: "dashboard")
	}
	
	def preview = {
		render "preview"
	}
	
	def unpublish = {
		withForm {
			if (params.project_unpublish_id) {
				params.project_unpublish_id = params.project_unpublish_id as int
				def project = Project.get(params.project_unpublish_id)
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
		def project

		if (params.kind && params.project_edit_id) {
			withForm {
				params.project_edit_id = params.project_edit_id as int
				project = Project.get(params.project_edit_id)
				project.properties = params
				
				if (!project.hasErrors() && project.save(flush: true)) {
					flash.message = "Project has been updated."
					redirect(controller: "developer", action: "dashboard")
				} else {
					flash.message = "Error while updating project."
				}
			}
		} else {
			try {
				params.id = params.id as int
				project = Project.get(params.id)
			} catch (NumberFormatException e) {
			}
			
		}
		
		[ project: project ]
	}
}
