package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class MainController {

    def springSecurityService

    def index() {
    	//println params
    	//render view:'/index',model:[palabra:'vaca']
    	//def listInitTask = []
    	//for(i in 1..8){
    	//	listInitTask.push([name:'Nombre', lastName:'Carrillo', number:i])
    	//}
    	
    	def user = springSecurityService.currentUser
        def tareas
        def ids = user.tareas*.idTrello.flatten()
        for(id in ids){
            tareas+=id+","
        }
        render view:'index',model:[tareas:tareas]
    }
}
