<%@ page import="com.HistorialMedico" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'historialMedico.label', default: 'HistorialMedico')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">

			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li>
							<g:link class="list" action="search">
								<i class="icon-list"></i>
								<g:message code="Buscar Historial Médico" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="Seleccionar Historial Médico" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="Editar Historial Médico" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<g:hasErrors bean="${historialMedicoInstance}">
				<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${historialMedicoInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>

				<fieldset>
					<g:form class="form-horizontal" action="edit" id="${historialMedicoInstance?.id}" >
						<g:hiddenField name="version" value="${historialMedicoInstance?.version}" />
						<fieldset>
							<f:display bean="historialMedicoInstance" property="paciente"/>
							<br/><br/>
							<g:textArea name="diagnostico" value="${historialMedicoInstance.diagnostico}"  style="margin: 0px; width: 600px; height: 300px; " />							
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">
									<i class="icon-ok icon-white"></i>
									<g:message code="default.button.update.label" default="Update" />
								</button>
							</div>
						</fieldset>
					</g:form>
				</fieldset>

			</div>

		</div>
	</body>
</html>
