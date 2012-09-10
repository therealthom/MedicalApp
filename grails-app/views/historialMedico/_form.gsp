<%@ page import="com.HistorialMedico" %>



<div class="fieldcontain ${hasErrors(bean: historialMedicoInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="historialMedico.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${com.Paciente.list()}" optionKey="id" required="" value="${historialMedicoInstance?.paciente?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: historialMedicoInstance, field: 'diagnostico', 'error')} required">
	<label for="diagnostico">
		<g:message code="historialMedico.diagnostico.label" default="Diagnostico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="diagnostico" cols="40" rows="5" maxlength="5000" required="" value="${historialMedicoInstance?.diagnostico}"/>
</div>

