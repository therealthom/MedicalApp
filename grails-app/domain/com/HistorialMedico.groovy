package com

class HistorialMedico {

	Paciente paciente
	String diagnostico
	
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
    	paciente nullable : false
		diagnostico blank : false, size : 1..50000
	}
}
