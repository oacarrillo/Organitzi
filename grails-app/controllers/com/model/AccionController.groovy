package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class AccionController {

    def index() { 
		render view:'accion'
    }
}
