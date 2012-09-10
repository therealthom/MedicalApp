package com

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.*

class PacienteController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }
	
	def search() {
	}

	def ajaxPacienteFinder() {
		def foundPacientes = null
		if (params.term != null && params.term.toString().length() > 2) {		
			foundPacientes = Paciente.withCriteria {
				ilike 'nombreCompleto', '%' + params.term + '%'
			}
		}
		render (foundPacientes?.'nombreCompleto' as JSON)
	 }
	
    def list() {
        [pacienteInstanceList: Paciente.list(sort:'nombreCompleto', order:'asc')]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[pacienteInstance: new Paciente(params)]
			break
		case 'POST':
	        def pacienteInstance = new Paciente(params)
			pacienteInstance.nombreCompleto = pacienteInstance.nombre + " " + pacienteInstance.apellidoPaterno + " " + pacienteInstance.apellidoMaterno
	        if (!pacienteInstance.save(flush: true)) {
	            render view: 'create', model: [pacienteInstance: pacienteInstance]
	            return
	        }
			
			def historialMedicoInstance = new HistorialMedico()
			historialMedicoInstance.paciente = pacienteInstance
			historialMedicoInstance.diagnostico = "-"
			historialMedicoInstance.save(flush:true)
						
			flash.message = message(code: 'default.created.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
	        redirect action: 'show', params: [paciente: pacienteInstance.nombreCompleto]
			break
		}
    }

	def show() {
		
		def term = params.paciente
		def pacienteInstance = Paciente.findByNombreCompleto(term)
		if (!pacienteInstance) {
			flash.message = "Paciente no encontrado."
			redirect action: 'search'
			return
		}
		[pacienteInstance: pacienteInstance]
	}
	
    /*def show() {	
        def pacienteInstance = Paciente.get(params.id as int)
        if (!pacienteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect action: 'list'
            return
        }

        [pacienteInstance: pacienteInstance]
    }*/

    def edit() {
		switch (request.method) {
		case 'GET':
	        def pacienteInstance = Paciente.get(params.id)
	        if (!pacienteInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [pacienteInstance: pacienteInstance]
			break
		case 'POST':
	        def pacienteInstance = Paciente.get(params.id)
	        if (!pacienteInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (pacienteInstance.version > version) {
	                pacienteInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'paciente.label', default: 'Paciente')] as Object[],
	                          "Another user has updated this Paciente while you were editing")
	                render view: 'edit', model: [pacienteInstance: pacienteInstance]
	                return
	            }
	        }

	        pacienteInstance.properties = params
			pacienteInstance.nombreCompleto = pacienteInstance.nombre + " " + pacienteInstance.apellidoPaterno + " " + pacienteInstance.apellidoMaterno
	        if (!pacienteInstance.save(flush: true)) {
	            render view: 'edit', model: [pacienteInstance: pacienteInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
	        redirect action: 'show', params: [paciente: pacienteInstance.nombreCompleto]
			break
		}
    }

    def delete() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect action: 'list'
            return
        }

        try {
            pacienteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect action: 'search'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect action: 'show', params: [paciente: pacienteInstance.nombreCompleto]
        }
    }
}
