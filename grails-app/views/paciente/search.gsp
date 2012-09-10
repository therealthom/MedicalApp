
<%@ page import="com.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<g:javascript library="jquery"/>
 		<g:javascript library="jquery-ui"/>
 		<g:javascript>
            $(document).ready(function() {
               $('#paciente').autocomplete({
                 source: '<g:createLink controller='paciente' action='ajaxPacienteFinder'/>'
               }); 
                
            });        
        </g:javascript>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="active">
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
					<h1><g:message code="Búsqueda de Pacientes" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<g:form action="show">
					<label for="paciente"><b> Nombre del Paciente</b> (Introduzca al menos 3 letras): </label>
					<g:textField  class="span5" name="paciente" />
					<br/>
					<g:submitButton name="showDetails" value="Mostrar Detalles" class="btn btn-primary btn-info"/>
				</g:form>
				
				
			</div>

		</div>
	</body>
</html>
