package gtugio.controller

class ErrorsController {

	def serverError = { render (view:"serverError") }
    def pageNotFound = { render (view:"pageNotFound") }
	def accessDenied = { render (view:"accessDenied") }
}
