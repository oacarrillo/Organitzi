package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class EsperaController {

    def springSecurityService
    def index() { 
		def user = springSecurityService.currentUser
        def tareas =  Tarea.findAllByTypeAndOwnerAndEnabledAndFinished(2,user,true,false)
        render view:'espera',model:[tareas:tareas]
    }

    def guardar() {
		def user = springSecurityService.currentUser		
    	def tareaGuardar=Tarea.get(params.id)
		if (!tareaGuardar){
	    	render status:404,text:"No se encontro la tarea"
	        return
		}
		tareaGuardar.scheduledDate=new Date().parse("yyyy-MM-dd hh:mm",params.fecha)
		tareaGuardar.save(flush:true,failOnError:true)
        render status:200
        
        //println params
    }

    def delete() {
		def user = springSecurityService.currentUser		
    	def tareaBorrar=Tarea.get(params.id)
		if (!tareaBorrar){
	        def tareas =  Tarea.findAllByTypeAndOwnerAndEnabledAndFinished(2,user,true,false)
	        render view:'espera',model:[tareas:tareas]
	        return
		}
		tareaBorrar.enabled=false
		tareaBorrar.save(flush:true,failOnError:true)
        def tareas =  Tarea.findAllByTypeAndOwnerAndEnabledAndFinished(2,user,true,false)
        render view:'espera',model:[tareas:tareas]
        //println params
    }

	def finalizar(){
		def user = springSecurityService.currentUser		
    	def tareaBorrar=Tarea.get(params.id)
		if (!tareaBorrar){
	        def tareas =  Tarea.findAllByTypeAndOwnerAndEnabledAndFinished(2,user,true,false)
	        render view:'espera',model:[tareas:tareas]
	        return
		}
		tareaBorrar.finished=true
		tareaBorrar.save(flush:true,failOnError:true)
        def tareas =  Tarea.findAllByTypeAndOwnerAndEnabledAndFinished(2,user,true,false)
        render view:'espera',model:[tareas:tareas]	
	}


}
