
<%@ page import="talentpool.Experience" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'experience.label', default: 'Experience')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-experience" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-experience" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list experience">
			
				<g:if test="${experienceInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="experience.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${experienceInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="experience.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${experienceInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="experience.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${experienceInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="experience.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${experienceInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.dateFrom}">
				<li class="fieldcontain">
					<span id="dateFrom-label" class="property-label"><g:message code="experience.dateFrom.label" default="Date From" /></span>
					
						<span class="property-value" aria-labelledby="dateFrom-label"><g:formatDate date="${experienceInstance?.dateFrom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.dateTo}">
				<li class="fieldcontain">
					<span id="dateTo-label" class="property-label"><g:message code="experience.dateTo.label" default="Date To" /></span>
					
						<span class="property-value" aria-labelledby="dateTo-label"><g:formatDate date="${experienceInstance?.dateTo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.isCurrentPosition}">
				<li class="fieldcontain">
					<span id="isCurrentPosition-label" class="property-label"><g:message code="experience.isCurrentPosition.label" default="Is Current Position" /></span>
					
						<span class="property-value" aria-labelledby="isCurrentPosition-label"><g:formatBoolean boolean="${experienceInstance?.isCurrentPosition}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="experience.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${experienceInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienceInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="experience.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${experienceInstance?.person?.id}">${experienceInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${experienceInstance?.id}" />
					<g:link class="edit" action="edit" id="${experienceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
