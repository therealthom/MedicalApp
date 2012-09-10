
<%@ page import="com.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus icon-white"></i>
								<g:message code="Nuevo Paciente" args="[entityName]" />
							</g:link>
						</li>
						<li class="active">
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
					<h1><g:message code="Listar Pacientes" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<g:form action="show">
					<select id="paciente" name="paciente">
						<g:each in="${pacienteInstanceList}" var="pacienteInstance">
							<option value="${pacienteInstance.nombreCompleto}">${pacienteInstance.nombreCompleto}</option>
						</g:each>
					</select>
					<br/>
					<g:submitButton name="showDetails" value="Mostrar" class="btn btn-primary btn-info"/>
				</g:form>
				
			</div>

		</div>
	</body>
</html>
