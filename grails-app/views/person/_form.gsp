<%@ page import="talentpool.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="person.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${personInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'professionalHeadline', 'error')} ">
	<label for="professionalHeadline">
		<g:message code="person.professionalHeadline.label" default="Professional Headline" />
		
	</label>
	<g:textField name="professionalHeadline" value="${personInstance?.professionalHeadline}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="person.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${personInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="person.country.label" default="Country" />
		
	</label>
	<!--g:textField name="country" value="${personInstance?.country}"/     -->
    <g:countrySelect name="country"
                     value="${personInstance?.country}" default="mus"
                     noSelection="['':'-Choose your country-']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'industry', 'error')} ">
	<label for="industry">
		<g:message code="person.industry.label" default="Industry" />
		
	</label>
	<g:textField name="industry" value="${personInstance?.industry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="person.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${personInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="person.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="image" name="image" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'summary', 'error')} ">
	<label for="summary">
		<g:message code="person.summary.label" default="Summary" />
		
	</label>
	<g:textArea name="summary" cols="40" rows="5" maxlength="1000" value="${personInstance?.summary}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'document', 'error')} ">
	<label for="document">
		<g:message code="person.document.label" default="Document" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.document?}" var="d">
    <li><g:link controller="document" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="document" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'document.label', default: 'Document')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'education', 'error')} ">
	<label for="education">
		<g:message code="person.education.label" default="Education" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.education?}" var="e">
    <li><g:link controller="education" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="education" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'education.label', default: 'Education')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'experience', 'error')} ">
	<label for="experience">
		<g:message code="person.experience.label" default="Experience" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.experience?}" var="e">
    <li><g:link controller="experience" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="experience" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'experience.label', default: 'Experience')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'skill', 'error')} ">
	<label for="skill">
		<g:message code="person.skill.label" default="Skill" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.skill?}" var="s">
    <li><g:link controller="skill" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="skill" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'skill.label', default: 'Skill')])}</g:link>
</li>
</ul>

</div>

