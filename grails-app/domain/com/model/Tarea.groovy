package com.model
import com.security.User

class Tarea {

	String name
	String idTrello
	Boolean isProject
	Boolean enabled
	Boolean finished
	Date scheduledDate
	Integer type //1.Proyecto, 2.Espera, 3.Accion, 4.Quizas
	Tarea project

	static hasMany = [tareas: Tarea]
	static belongsTo = [owner: User]

    static constraints = {
    	scheduledDate nullable:true 
    	project nullable:true 
    }

public Tarea (name,idTrello,isProject,type,enabled,owner)
{
	this.name = name 
	this.idTrello= idTrello
	this.isProject= isProject
	this.type= type
	this.enabled=enabled
	this.finished=false
	this.owner=owner
}

}
