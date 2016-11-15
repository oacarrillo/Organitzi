package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ReportesController {

    def index() { 
    	render view:'reportes'
    }
}
