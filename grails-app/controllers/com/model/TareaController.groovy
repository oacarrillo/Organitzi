package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TareaController {

    def springSecurityService
    def list() { 
    	def listTask = []
    	for(a in 1..8){
    		listTask.push([name:'oscar', lastName:'Carrillo', number:a])
    	}
    	render view:'list',model:[listTask:listTask]
    }
    
    def delete(){
    	//Tarea.get(params.id).delete(flush:true, failOnError:true)
    	//println "Borrando tarea: "+params.id
    	//redirect action:'list'
        def user = springSecurityService.currentUser
        def nuevaTarea = new Tarea (params.name,params.idTrello,params.tipo=="1"?true:false,Integer.parseInt(params.tipo),false,user)
        if(!nuevaTarea.validate())
        {
            render status:400, text:"Error parametros"
            return
        }
        nuevaTarea.save(flush:true,failOnError:true)
        render status:200        
    }

    def create(){
        def user = springSecurityService.currentUser
        def nuevaTarea = new Tarea (params.name,params.idTrello,params.tipo=="1"?true:false,Integer.parseInt(params.tipo),true,user)
        if(!nuevaTarea.validate())
        {
            render status:400, text:"Error parametros"
            return
        }
        nuevaTarea.save(flush:true,failOnError:true)
        render status:200
    }

}
