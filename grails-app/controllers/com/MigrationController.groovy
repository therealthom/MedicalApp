package com

import java.text.SimpleDateFormat

class MigrationController {

	def index() {

	}
	
	def process () {
		def ruta = params.ruta
		if (ruta) {			
			def filename = new File (ruta);
			println filename
			if (filename.exists()) {
				String[] tokens;
				def sdf = new SimpleDateFormat("dd/mm/yyyy")
				def paciente = null
				def sPaciente = null
				def historialMedico = null
				def valid
				def fine = true
				def contGood = 0
				def contFail = 0
				def contTotal = 0
				filename.eachLine { line ->
					if (fine) {
						contTotal ++
						println line
		
						if (paciente == null) {
							paciente = new Paciente()
						}
						if (historialMedico == null) {
							historialMedico = new HistorialMedico()
						}
						tokens = line.split("@");
						println "length -> " + tokens.length
		
						if ((tokens[6] != null && !tokens[6].trim().equals("")) && (tokens[7] != null && !tokens[7].trim().equals("")) && (tokens[8] != null && !tokens[8].trim().equals(""))) {
							contGood ++
							paciente.dateCreated = (tokens[2] != null && !tokens[2].trim().equals("")) ? sdf.parse(tokens[2].trim()) : null
							paciente.titulo = tokens[5].trim().toUpperCase()
							paciente.nombre = tokens[6] == null || tokens[6].equals("") ? "-" : tokens[6].trim().toUpperCase()
							paciente.apellidoPaterno = tokens[7] == null || tokens[7].trim().equals("") ? "-" : tokens[7].trim().toUpperCase()
							paciente.apellidoMaterno = tokens[8] == null || tokens[8].trim().equals("") ? "-" : tokens[8].trim().toUpperCase()
							paciente.nombreCompleto = paciente.nombre + " " + paciente.apellidoPaterno + " " + paciente.apellidoMaterno
							paciente.fechaDeUltimaVisita = (tokens[3] != null && !tokens[3].trim().equals("")) ? sdf.parse(tokens[3].trim()) : null
							paciente.sexo = tokens[9].trim().toUpperCase()
							paciente.edad = tokens[10].trim().toUpperCase()
							paciente.peso = tokens[12].trim().toUpperCase()
							paciente.estatura = tokens[15].trim().toUpperCase()
							paciente.pulso = tokens[17].trim().toUpperCase()
							paciente.ritmo = tokens[19].trim().toUpperCase()
							paciente.respiracion = tokens[20].trim().toUpperCase()
							paciente.temperatura = tokens[22].trim().toUpperCase()
							paciente.presion = tokens[24].trim().toUpperCase()
							paciente.presionDiastolica = tokens[26].trim().toUpperCase()
							paciente.fechaDeNacimiento = (tokens[28] != null && !tokens[28].trim().equals("")) ? sdf.parse(tokens[28].trim()) : null
							paciente.lugarDeNacimiento = tokens[29].trim().toUpperCase()
							paciente.estadoCivil = tokens[30].trim().toUpperCase()
							paciente.escolaridad = tokens[31].trim().toUpperCase()
							paciente.calleConNumero = tokens[32].trim().toUpperCase()
							paciente.colonia = tokens[33].trim().toUpperCase()
							paciente.codigoPostal = tokens[34].trim().toUpperCase()
							paciente.ciudad = tokens[35].trim().toUpperCase()
							paciente.estado = tokens[36].trim().toUpperCase()
							paciente.telefonoParticular = tokens[37].trim().toUpperCase()
							paciente.ocupacion = tokens[40].trim().toUpperCase()
							paciente.empresa = tokens[41].trim().toUpperCase()
							paciente.puesto = tokens[42].trim().toUpperCase()
							paciente.telefonoEmpresa = tokens[44].trim().toUpperCase()
		
							valid = paciente.validate()
		
							if (valid) {
								sPaciente = paciente.save(flush:true)
		
								historialMedico.paciente = paciente
								historialMedico.diagnostico = tokens[79].trim().toUpperCase() + " --- " + tokens[45].trim().toUpperCase()
								historialMedico.save(flush:true)
								println ("- Paciente " + paciente.id + " guardado.")
							}
							if (!valid || !sPaciente) {
								println "Errores:"
								println paciente.errors
								fine = false
							}
						} else {
							contFail ++
						}
						paciente = null
						historialMedico = null
					}
				}
				String mensajes
				mensajes += "Total Insertados: " + contGood + "<br/>"
				mensajes += "Total omitidos: "+ contFail + "<br/>"
				mensajes += "Total (Insertados + Omitidos): " + contTotal + "<br/>"
				println mensajes
				[ mensajes : mensajes ]
			} else {
				flash.message = "El archivo seleccionado no existe."
				redirect action:"index"
			}
		} else {
			flash.message = "Introduzca una ruta!"
			redirect action:"index"
		}
	}
}
