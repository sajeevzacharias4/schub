
<%@ page import="domain.goal.Discrete" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'discrete.label', default: 'Discrete')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-discrete" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-discrete" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'discrete.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="milestone" title="${message(code: 'discrete.milestone.label', default: 'Milestone')}" />
					
						<g:sortableColumn property="filePayload" title="${message(code: 'discrete.filePayload.label', default: 'File Payload')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${discreteInstanceList}" status="i" var="discreteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${discreteInstance.id}">${fieldValue(bean: discreteInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: discreteInstance, field: "milestone")}</td>
					
						<td>${fieldValue(bean: discreteInstance, field: "filePayload")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${discreteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
