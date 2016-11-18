package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ProyectoController {

    def springSecurityService
    def index() { 
		
    	def user = springSecurityService.currentUser
        def tareas =  Tarea.findAllByIsProjectAndOwner(true,user)
        render view:'proyecto',model:[tareas:tareas]

//		render view:'proyecto'

    }
   def listar(){
   		def proyectoActual=Tarea.get(params.id)
   		

   }
}
