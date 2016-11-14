package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TareaController {

    def list() { 
    	def listTask = []
    	for(a in 1..8){
    		listTask.push([name:'oscar', lastName:'Carrillo', number:a])
    	}
    	render view:'list',model:[listTask:listTask]
    }
    
    def delete(){
    	//Tarea.get(params.id).delete(flush:true, failOnError:true)
    	println "Borrando tarea: "+params.id
    	redirect action:'list'
    }

}
