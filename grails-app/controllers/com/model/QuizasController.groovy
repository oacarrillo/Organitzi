package com.model
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class QuizasController {

    def index() { 
    	render view:'quizas'
    }
}
