
<%@ page import="talentpool.Document" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'document.label', default: 'Document')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-document" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-document" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="documentType" title="${message(code: 'document.documentType.label', default: 'Document Type')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'document.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="document" title="${message(code: 'document.document.label', default: 'Document')}" />
					
						<th><g:message code="document.person.label" default="Person" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentInstanceList}" status="i" var="documentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${documentInstance.id}">${fieldValue(bean: documentInstance, field: "documentType")}</g:link></td>
					
						<td>${fieldValue(bean: documentInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: documentInstance, field: "document")}</td>
					
						<td>${fieldValue(bean: documentInstance, field: "person")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
