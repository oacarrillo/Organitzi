package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class QuizasController {

    def springSecurityService
    def index() { 
    	def user = springSecurityService.currentUser
        def tareas =  Tarea.findAllByTypeAndOwner(4,user)
        render view:'quizas',model:[tareas:tareas]
    }
}
