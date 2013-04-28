
<%@ page import="talentpool.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-education" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list education">
			
				<g:if test="${educationInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="education.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${educationInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="education.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${educationInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.degree}">
				<li class="fieldcontain">
					<span id="degree-label" class="property-label"><g:message code="education.degree.label" default="Degree" /></span>
					
						<span class="property-value" aria-labelledby="degree-label"><g:fieldValue bean="${educationInstance}" field="degree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.fieldOfStudy}">
				<li class="fieldcontain">
					<span id="fieldOfStudy-label" class="property-label"><g:message code="education.fieldOfStudy.label" default="Field Of Study" /></span>
					
						<span class="property-value" aria-labelledby="fieldOfStudy-label"><g:fieldValue bean="${educationInstance}" field="fieldOfStudy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.grade}">
				<li class="fieldcontain">
					<span id="grade-label" class="property-label"><g:message code="education.grade.label" default="Grade" /></span>
					
						<span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${educationInstance}" field="grade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.activities}">
				<li class="fieldcontain">
					<span id="activities-label" class="property-label"><g:message code="education.activities.label" default="Activities" /></span>
					
						<span class="property-value" aria-labelledby="activities-label"><g:fieldValue bean="${educationInstance}" field="activities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="education.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${educationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="education.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${educationInstance?.person?.id}">${educationInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${educationInstance?.id}" />
					<g:link class="edit" action="edit" id="${educationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
