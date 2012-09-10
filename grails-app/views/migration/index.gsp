<%@ page import="com.HistorialMedico"%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<title>Resultado de la migración</title>
	</head>
	<body>
		<g:if test="${flash.message}">
			<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
		</g:if>
		<g:form action="process">
			<label for="archivo">Seleccionar archivo:</label>
			<input type="file" name="ruta">
			<br />
			<g:submitButton name="accept" value="Aceptar" />
		</g:form>
	</body>
</html>
