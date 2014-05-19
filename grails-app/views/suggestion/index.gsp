
<%@ page import="domain.Suggestion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'suggestion.label', default: 'Suggestion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-suggestion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-suggestion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="filePayload" title="${message(code: 'suggestion.filePayload.label', default: 'File Payload')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'suggestion.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="opinion" title="${message(code: 'suggestion.opinion.label', default: 'Opinion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${suggestionInstanceList}" status="i" var="suggestionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${suggestionInstance.id}">${fieldValue(bean: suggestionInstance, field: "filePayload")}</g:link></td>
					
						<td>${fieldValue(bean: suggestionInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: suggestionInstance, field: "opinion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${suggestionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
