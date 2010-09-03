package gtugio.controller

import gtugio.domain.Project 


class DashboardController {

    def index = {
        def latestProject
        def projects = Project.findAllByStatus("published", [max: 11, sort: "published", order: "desc"])
        if (projects) {
            latestProject = projects[0]
            projects.remove 0
        }
		
        [latestProject: latestProject, projects: projects]
    }
}
