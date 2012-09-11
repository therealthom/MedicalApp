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
			<label for="archivo">Seleccionar ruta del archivo SCHC1.txt</label>
			<g:textField class="input-large" name="ruta" value=""/>
			<br />
			<g:submitButton name="accept" value="Aceptar" />
		</g:form>
	</body>
</html>
