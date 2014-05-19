
<%@ page import="domain.goal.Continuous" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'continuous.label', default: 'Continuous')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-continuous" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-continuous" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'continuous.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="filePayload" title="${message(code: 'continuous.filePayload.label', default: 'File Payload')}" />
					
						<g:sortableColumn property="maxValue" title="${message(code: 'continuous.maxValue.label', default: 'Max Value')}" />
					
						<g:sortableColumn property="minValue" title="${message(code: 'continuous.minValue.label', default: 'Min Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${continuousInstanceList}" status="i" var="continuousInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${continuousInstance.id}">${fieldValue(bean: continuousInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: continuousInstance, field: "filePayload")}</td>
					
						<td>${fieldValue(bean: continuousInstance, field: "maxValue")}</td>
					
						<td>${fieldValue(bean: continuousInstance, field: "minValue")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${continuousInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
