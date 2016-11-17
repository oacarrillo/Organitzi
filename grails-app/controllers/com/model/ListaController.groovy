package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ListaController {

    def index() { 
    	render view:'lista'
    }
}
