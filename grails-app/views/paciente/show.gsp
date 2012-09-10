
<%@ page import="com.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li>
							<g:link class="list" action="search">
								<i class="icon-list"></i>
								<g:message code="Buscar Paciente" args="[entityName]" />
							</g:link>
						</li>
						<li class="active">
							<g:link class="create" action="create">
								<i class="icon-plus icon-white"></i>
								<g:message code="Nuevo Paciente" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="Listar Pacientes" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="Mostrar Paciente" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<dl>
				
					<g:if test="${pacienteInstance?.titulo}">
						<dt><g:message code="paciente.titulo.label" default="Titulo" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="titulo"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.nombre}">
						<dt><g:message code="paciente.nombre.label" default="Nombre" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="nombre"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.apellidoPaterno}">
						<dt><g:message code="paciente.apellidoPaterno.label" default="Apellido Paterno" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="apellidoPaterno"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.apellidoMaterno}">
						<dt><g:message code="paciente.apellidoMaterno.label" default="Apellido Materno" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="apellidoMaterno"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.fechaDeUltimaVisita}">
						<dt><g:message code="paciente.fechaDeUltimaVisita.label" default="Fecha De Ultima Visita" /></dt>
						
							<dd><g:formatDate date="${pacienteInstance?.fechaDeUltimaVisita}" /></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.sexo}">
						<dt><g:message code="paciente.sexo.label" default="Sexo" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="sexo"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.edad}">
						<dt><g:message code="paciente.edad.label" default="Edad" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="edad"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.peso}">
						<dt><g:message code="paciente.peso.label" default="Peso" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="peso"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.estatura}">
						<dt><g:message code="paciente.estatura.label" default="Estatura" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="estatura"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.pulso}">
						<dt><g:message code="paciente.pulso.label" default="Pulso" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="pulso"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.ritmo}">
						<dt><g:message code="paciente.ritmo.label" default="Ritmo" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="ritmo"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.respiracion}">
						<dt><g:message code="paciente.respiracion.label" default="Respiracion" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="respiracion"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.temperatura}">
						<dt><g:message code="paciente.temperatura.label" default="Temperatura" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="temperatura"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.presion}">
						<dt><g:message code="paciente.presion.label" default="Presion" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="presion"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.presionDiastolica}">
						<dt><g:message code="paciente.presionDiastolica.label" default="Presion Diastolica" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="presionDiastolica"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.fechaDeNacimiento}">
						<dt><g:message code="paciente.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></dt>
						
							<dd><g:formatDate date="${pacienteInstance?.fechaDeNacimiento}" /></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.lugarDeNacimiento}">
						<dt><g:message code="paciente.lugarDeNacimiento.label" default="Lugar De Nacimiento" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="lugarDeNacimiento"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.estadoCivil}">
						<dt><g:message code="paciente.estadoCivil.label" default="Estado Civil" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="estadoCivil"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.escolaridad}">
						<dt><g:message code="paciente.escolaridad.label" default="Escolaridad" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="escolaridad"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.calleConNumero}">
						<dt><g:message code="paciente.calleConNumero.label" default="Calle Con Numero" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="calleConNumero"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.colonia}">
						<dt><g:message code="paciente.colonia.label" default="Colonia" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="colonia"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.codigoPostal}">
						<dt><g:message code="paciente.codigoPostal.label" default="Codigo Postal" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="codigoPostal"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.ciudad}">
						<dt><g:message code="paciente.ciudad.label" default="Ciudad" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="ciudad"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.estado}">
						<dt><g:message code="paciente.estado.label" default="Estado" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="estado"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.telefonoParticular}">
						<dt><g:message code="paciente.telefonoParticular.label" default="Telefono Particular" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="telefonoParticular"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.ocupacion}">
						<dt><g:message code="paciente.ocupacion.label" default="Ocupacion" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="ocupacion"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.empresa}">
						<dt><g:message code="paciente.empresa.label" default="Empresa" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="empresa"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.puesto}">
						<dt><g:message code="paciente.puesto.label" default="Puesto" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="puesto"/></dd>
						
					</g:if>
				
					<g:if test="${pacienteInstance?.telefonoEmpresa}">
						<dt><g:message code="paciente.telefonoEmpresa.label" default="Telefono Empresa" /></dt>
						
							<dd><g:fieldValue bean="${pacienteInstance}" field="telefonoEmpresa"/></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${pacienteInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${pacienteInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
