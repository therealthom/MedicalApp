
<%@ page import="com.HistorialMedico" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'historialMedico.label', default: 'HistorialMedico')}" />
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
					<h1><g:message code="Mostrar Historial Médico" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
					<g:if test="${historialMedicoInstance?.paciente}">
						<dt><g:message code="historialMedico.paciente.label" default="Paciente" /></dt>
							<dd><g:link controller="paciente" action="show" id="${historialMedicoInstance?.paciente?.id}">${historialMedicoInstance?.paciente?.encodeAsHTML()}</g:link></dd>
					</g:if>
					<g:if test="${historialMedicoInstance?.diagnostico}">
						<dt><g:message code="historialMedico.diagnostico.label" default="Diagnostico" /></dt>
							<dd><g:fieldValue bean="${historialMedicoInstance}" field="diagnostico"/></dd>
					</g:if>
					<g:if test="${historialMedicoInstance?.dateCreated}">
						<dt><g:message code="historialMedico.dateCreated.label" default="Fecha de Creaciòn" /></dt>
							<dd><g:formatDate date="${historialMedicoInstance?.dateCreated}" /></dd>
					</g:if>
					<g:if test="${historialMedicoInstance?.lastUpdated}">
						<dt><g:message code="historialMedico.lastUpdated.label" default="Fecha de Última Actualización" /></dt>
							<dd><g:formatDate date="${historialMedicoInstance?.lastUpdated}" /></dd>
					</g:if>
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${historialMedicoInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${historialMedicoInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
