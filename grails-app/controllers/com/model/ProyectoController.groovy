package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ProyectoController {

    def index() { 
		render view:'proyecto'
    }
}
