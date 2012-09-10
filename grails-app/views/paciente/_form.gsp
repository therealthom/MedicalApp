<%@ page import="com.Paciente" %>



<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="paciente.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" maxlength="10" value="${pacienteInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="paciente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${pacienteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="50" required="" value="${pacienteInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="50" required="" value="${pacienteInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'fechaDeUltimaVisita', 'error')} ">
	<label for="fechaDeUltimaVisita">
		<g:message code="paciente.fechaDeUltimaVisita.label" default="Fecha De Ultima Visita" />
		
	</label>
	<g:datePicker name="fechaDeUltimaVisita" precision="day" value="${pacienteInstance?.fechaDeUltimaVisita}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="paciente.sexo.label" default="Sexo" />
		
	</label>
	<g:textField name="sexo" maxlength="10" value="${pacienteInstance?.sexo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edad', 'error')} ">
	<label for="edad">
		<g:message code="paciente.edad.label" default="Edad" />
		
	</label>
	<g:textField name="edad" maxlength="3" value="${pacienteInstance?.edad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'peso', 'error')} ">
	<label for="peso">
		<g:message code="paciente.peso.label" default="Peso" />
		
	</label>
	<g:textField name="peso" maxlength="3" value="${pacienteInstance?.peso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estatura', 'error')} ">
	<label for="estatura">
		<g:message code="paciente.estatura.label" default="Estatura" />
		
	</label>
	<g:textField name="estatura" maxlength="5" value="${pacienteInstance?.estatura}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pulso', 'error')} ">
	<label for="pulso">
		<g:message code="paciente.pulso.label" default="Pulso" />
		
	</label>
	<g:textField name="pulso" maxlength="5" value="${pacienteInstance?.pulso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ritmo', 'error')} ">
	<label for="ritmo">
		<g:message code="paciente.ritmo.label" default="Ritmo" />
		
	</label>
	<g:textField name="ritmo" maxlength="20" value="${pacienteInstance?.ritmo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'respiracion', 'error')} ">
	<label for="respiracion">
		<g:message code="paciente.respiracion.label" default="Respiracion" />
		
	</label>
	<g:textField name="respiracion" maxlength="20" value="${pacienteInstance?.respiracion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'temperatura', 'error')} ">
	<label for="temperatura">
		<g:message code="paciente.temperatura.label" default="Temperatura" />
		
	</label>
	<g:textField name="temperatura" maxlength="10" value="${pacienteInstance?.temperatura}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'presion', 'error')} ">
	<label for="presion">
		<g:message code="paciente.presion.label" default="Presion" />
		
	</label>
	<g:textField name="presion" maxlength="20" value="${pacienteInstance?.presion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'presionDiastolica', 'error')} ">
	<label for="presionDiastolica">
		<g:message code="paciente.presionDiastolica.label" default="Presion Diastolica" />
		
	</label>
	<g:textField name="presionDiastolica" maxlength="20" value="${pacienteInstance?.presionDiastolica}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'fechaDeNacimiento', 'error')} ">
	<label for="fechaDeNacimiento">
		<g:message code="paciente.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
		
	</label>
	<g:datePicker name="fechaDeNacimiento" precision="day"  value="${pacienteInstance?.fechaDeNacimiento}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'lugarDeNacimiento', 'error')} ">
	<label for="lugarDeNacimiento">
		<g:message code="paciente.lugarDeNacimiento.label" default="Lugar De Nacimiento" />
		
	</label>
	<g:textField name="lugarDeNacimiento" maxlength="50" value="${pacienteInstance?.lugarDeNacimiento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estadoCivil', 'error')} ">
	<label for="estadoCivil">
		<g:message code="paciente.estadoCivil.label" default="Estado Civil" />
		
	</label>
	<g:textField name="estadoCivil" maxlength="15" value="${pacienteInstance?.estadoCivil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'escolaridad', 'error')} ">
	<label for="escolaridad">
		<g:message code="paciente.escolaridad.label" default="Escolaridad" />
		
	</label>
	<g:textField name="escolaridad" maxlength="30" value="${pacienteInstance?.escolaridad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'calleConNumero', 'error')} ">
	<label for="calleConNumero">
		<g:message code="paciente.calleConNumero.label" default="Calle Con Numero" />
		
	</label>
	<g:textField name="calleConNumero" maxlength="50" value="${pacienteInstance?.calleConNumero}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'colonia', 'error')} ">
	<label for="colonia">
		<g:message code="paciente.colonia.label" default="Colonia" />
		
	</label>
	<g:textField name="colonia" maxlength="30" value="${pacienteInstance?.colonia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="paciente.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" maxlength="5" value="${pacienteInstance?.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="paciente.ciudad.label" default="Ciudad" />
		
	</label>
	<g:textField name="ciudad" maxlength="30" value="${pacienteInstance?.ciudad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="paciente.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" maxlength="30" value="${pacienteInstance?.estado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'telefonoParticular', 'error')} ">
	<label for="telefonoParticular">
		<g:message code="paciente.telefonoParticular.label" default="Telefono Particular" />
		
	</label>
	<g:textField name="telefonoParticular" maxlength="20" value="${pacienteInstance?.telefonoParticular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="paciente.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:textField name="ocupacion" maxlength="40" value="${pacienteInstance?.ocupacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'empresa', 'error')} ">
	<label for="empresa">
		<g:message code="paciente.empresa.label" default="Empresa" />
		
	</label>
	<g:textField name="empresa" maxlength="50" value="${pacienteInstance?.empresa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="paciente.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" maxlength="30" value="${pacienteInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'telefonoEmpresa', 'error')} ">
	<label for="telefonoEmpresa">
		<g:message code="paciente.telefonoEmpresa.label" default="Telefono Empresa" />
		
	</label>
	<g:textField name="telefonoEmpresa" maxlength="20" value="${pacienteInstance?.telefonoEmpresa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'padecimiento', 'error')} ">
	<label for="padecimiento">
		<g:message code="paciente.padecimiento.label" default="Padecimiento" />
		
	</label>
	<g:textArea name="padecimiento" cols="40" rows="5" maxlength="2048" value="${pacienteInstance?.padecimiento}"/>
</div>
