package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class MainController {

    def index() {
    	//println params
    	//render view:'/index',model:[palabra:'vaca']
    	//def listInitTask = []
    	//for(i in 1..8){
    	//	listInitTask.push([name:'Nombre', lastName:'Carrillo', number:i])
    	//}
    	//render view:'index',model:[listInitTask:listInitTask]
    	render view:'/index'
    }
}
