<%@ page import="talentpool.Document" %>



<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'documentType', 'error')} ">
	<label for="documentType">
		<g:message code="document.documentType.label" default="Document Type" />
		
	</label>
	<g:textField name="documentType" maxlength="50" value="${documentInstance?.documentType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="document.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${documentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'document', 'error')} required">
	<label for="document">
		<g:message code="document.document.label" default="Document" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="document" name="document" />
</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="document.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${talentpool.Person.list()}" optionKey="id" required="" value="${documentInstance?.person?.id}" class="many-to-one"/>
</div>

