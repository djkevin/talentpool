
<%@ page import="talentpool.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="person.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="person.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="person.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${personInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.professionalHeadline}">
				<li class="fieldcontain">
					<span id="professionalHeadline-label" class="property-label"><g:message code="person.professionalHeadline.label" default="Professional Headline" /></span>
					
						<span class="property-value" aria-labelledby="professionalHeadline-label"><g:fieldValue bean="${personInstance}" field="professionalHeadline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="person.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${personInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="person.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${personInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.industry}">
				<li class="fieldcontain">
					<span id="industry-label" class="property-label"><g:message code="person.industry.label" default="Industry" /></span>
					
						<span class="property-value" aria-labelledby="industry-label"><g:fieldValue bean="${personInstance}" field="industry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="person.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="person.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="person.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${personInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.educations}">
				<li class="fieldcontain">
					<span id="educations-label" class="property-label"><g:message code="person.educations.label" default="Educations" /></span>
					
						<g:each in="${personInstance.educations}" var="e">
						<span class="property-value" aria-labelledby="educations-label"><g:link controller="education" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<g:link class="edit" action="edit" id="${personInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
