<%@ page import="talentpool.Experience" %>



<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'companyName', 'error')} ">
	<label for="companyName">
		<g:message code="experience.companyName.label" default="Company Name" />
		
	</label>
	<g:textField name="companyName" value="${experienceInstance?.companyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="experience.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${experienceInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="experience.location.label" default="Location" />
		
	</label>
	<g:textField name="location" maxlength="100" value="${experienceInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="experience.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${experienceInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'dateFrom', 'error')} required">
	<label for="dateFrom">
		<g:message code="experience.dateFrom.label" default="Date From" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateFrom" precision="day"  value="${experienceInstance?.dateFrom}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'dateTo', 'error')} required">
	<label for="dateTo">
		<g:message code="experience.dateTo.label" default="Date To" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateTo" precision="day"  value="${experienceInstance?.dateTo}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'isCurrentPosition', 'error')} ">
	<label for="isCurrentPosition">
		<g:message code="experience.isCurrentPosition.label" default="Is Current Position" />
		
	</label>
	<g:checkBox name="isCurrentPosition" value="${experienceInstance?.isCurrentPosition}" />
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="experience.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="500" value="${experienceInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="experience.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${talentpool.Person.list()}" optionKey="id" required="" value="${experienceInstance?.person?.id}" class="many-to-one"/>
</div>

