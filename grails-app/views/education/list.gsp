
<%@ page import="talentpool.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-education" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="startDate" title="${message(code: 'education.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'education.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="degree" title="${message(code: 'education.degree.label', default: 'Degree')}" />
					
						<g:sortableColumn property="fieldOfStudy" title="${message(code: 'education.fieldOfStudy.label', default: 'Field Of Study')}" />
					
						<g:sortableColumn property="grade" title="${message(code: 'education.grade.label', default: 'Grade')}" />
					
						<g:sortableColumn property="activities" title="${message(code: 'education.activities.label', default: 'Activities')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${educationInstanceList}" status="i" var="educationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${educationInstance.id}">${fieldValue(bean: educationInstance, field: "startDate")}</g:link></td>
					
						<td><g:formatDate date="${educationInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: educationInstance, field: "degree")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "fieldOfStudy")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "grade")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "activities")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${educationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
