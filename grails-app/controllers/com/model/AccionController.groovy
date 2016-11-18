package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class AccionController {

    def springSecurityService
    def index() { 
    	def user = springSecurityService.currentUser
        def tareas =  Tarea.findAllByTypeAndOwner(3,user)
        render view:'accion',model:[tareas:tareas]
    }
}
