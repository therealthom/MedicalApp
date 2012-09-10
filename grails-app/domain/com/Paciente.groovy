package com

class Paciente {

	Date dateCreated
	String titulo
	String nombreCompleto
	String nombre
	String apellidoPaterno
	String apellidoMaterno
	Date fechaDeUltimaVisita
	String sexo
	String edad
	String peso
	String estatura
	String pulso
	String ritmo
	String respiracion
	String temperatura
	String presion
	String presionDiastolica
	Date fechaDeNacimiento
	String lugarDeNacimiento
	String estadoCivil
	String escolaridad
	String calleConNumero
	String colonia
	String codigoPostal
	String ciudad
	String estado
	String telefonoParticular
	String ocupacion
	String empresa
	String puesto
	String telefonoEmpresa

	static constraints = {
		titulo blank:true, size:0..20
		nombre blank:false, size:1..80
		apellidoPaterno blank:false, size:1..80
		apellidoMaterno blank:false, size:1..80
		fechaDeUltimaVisita nullable:true
		sexo blank:true, size:0..20
		edad blank:true, size:0..10
		peso blank:true, size:0..10
		estatura blank:true, size:0..10
		pulso blank:true, size:0..10
		ritmo blank:true, size:0..20
		respiracion blank:true, size:0..20
		temperatura blank:true, size:0..20
		presion blank:true, size:0..20
		presionDiastolica blank:true, size:0..20
		fechaDeNacimiento nullable:true
		lugarDeNacimiento blank:true, size:0..50
		estadoCivil blank:true, size:0..20
		escolaridad blank:true, size:0..30
		calleConNumero blank:true, size:0..100
		colonia blank:true, size:0..50
		codigoPostal blank:true, size:0..10
		ciudad blank:true, size:0..50
		estado blank:true, size:0..50
		telefonoParticular blank:true, size:0..40
		ocupacion blank:true, size:0..50
		empresa blank:true, size:0..100
		puesto blank:true, size:0..50
		telefonoEmpresa blank:true, size:0..30
	}

	String toString() {
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
}
