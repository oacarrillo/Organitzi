package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class EsperaController {

    def index() { 
		render view:'espera'
    }
}
