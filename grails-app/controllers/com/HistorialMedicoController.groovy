package com

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.*

class HistorialMedicoController {

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
        	[historialMedicoInstance: new HistorialMedico(params)]
			break
		case 'POST':
	        def historialMedicoInstance = new HistorialMedico(params)
	        if (!historialMedicoInstance.save(flush: true)) {
	            render view: 'create', model: [historialMedicoInstance: historialMedicoInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), historialMedicoInstance.id])
	        redirect action: 'show', id: historialMedicoInstance.id
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
		def historialMedicoInstance = HistorialMedico.findByPaciente(pacienteInstance)
		[historialMedicoInstance: historialMedicoInstance]
	}
	
    /*def show() {
        def historialMedicoInstance = HistorialMedico.get(params.id)
        if (!historialMedicoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), params.id])
            redirect action: 'list'
            return
        }

        [historialMedicoInstance: historialMedicoInstance]
    }*/

    def edit() {
		switch (request.method) {
		case 'GET':
	        def historialMedicoInstance = HistorialMedico.get(params.id)
	        if (!historialMedicoInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [historialMedicoInstance: historialMedicoInstance]
			break
		case 'POST':
	        def historialMedicoInstance = HistorialMedico.get(params.id)
	        if (!historialMedicoInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (historialMedicoInstance.version > version) {
	                historialMedicoInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'historialMedico.label', default: 'HistorialMedico')] as Object[],
	                          "Another user has updated this HistorialMedico while you were editing")
	                render view: 'edit', model: [historialMedicoInstance: historialMedicoInstance]
	                return
	            }
	        }

	        historialMedicoInstance.properties = params

	        if (!historialMedicoInstance.save(flush: true)) {
	            render view: 'edit', model: [historialMedicoInstance: historialMedicoInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), historialMedicoInstance.id])
	        redirect action: 'show', params: [paciente: historialMedicoInstance.paciente.nombreCompleto]
			break
		}
    }

    def delete() {
        def historialMedicoInstance = HistorialMedico.get(params.id)
        if (!historialMedicoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), params.id])
            redirect action: 'list'
            return
        }

        try {
            historialMedicoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'historialMedico.label', default: 'HistorialMedico'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
