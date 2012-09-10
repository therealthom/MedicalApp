<%@ page import="com.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
					<h1><g:message code="Nuevo Paciente" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<g:hasErrors bean="${pacienteInstance}">
				<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${pacienteInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>

				<fieldset>
					<g:form class="form-horizontal" action="create" >
						<fieldset>
							<f:with bean="pacienteInstance">
								<f:field property="titulo"/>
								<f:field property="nombre"/>
								<f:field property="apellidoPaterno"/>
								<f:field property="apellidoMaterno"/>
								<f:field property="fechaDeUltimaVisita"/>
								<f:field property="sexo"/>
								<f:field property="edad"/>
								<f:field property="peso"/>
								<f:field property="estatura"/>
								<f:field property="pulso"/>
								<f:field property="ritmo"/>
								<f:field property="respiracion"/>
								<f:field property="temperatura"/>
								<f:field property="presion"/>
								<f:field property="presionDiastolica"/>
								<f:field property="fechaDeNacimiento"/>
								<f:field property="lugarDeNacimiento"/>
								<f:field property="estadoCivil"/>
								<f:field property="escolaridad"/>
								<f:field property="calleConNumero"/>
								<f:field property="colonia"/>
								<f:field property="codigoPostal"/>
								<f:field property="ciudad"/>
								<f:field property="estado"/>
								<f:field property="telefonoParticular"/>
								<f:field property="ocupacion"/>
								<f:field property="empresa"/>
								<f:field property="puesto"/>
								<f:field property="telefonoEmpresa"/>
							</f:with>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">
									<i class="icon-ok icon-white"></i>
									<g:message code="default.button.create.label" default="Create" />
								</button>
							</div>
						</fieldset>
					</g:form>
				</fieldset>
				
			</div>

		</div>
	</body>
</html>
