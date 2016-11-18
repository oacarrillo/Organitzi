package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class EsperaController {

    def springSecurityService
    def index() { 
		def user = springSecurityService.currentUser
        def tareas =  Tarea.findAllByTypeAndOwner(2,user)
        render view:'espera',model:[tareas:tareas]
    }
}
