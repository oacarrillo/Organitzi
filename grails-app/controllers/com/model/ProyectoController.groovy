package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ProyectoController {

    def springSecurityService
    def index() { 
		
    	def user = springSecurityService.currentUser
        def tareas
        def ids = user.tareas*.idTrello.flatten()
        for(id in ids){
            tareas+=id+","
        }
        render view:'proyecto',model:[tareas:tareas]

//		render view:'proyecto'

    }
}
