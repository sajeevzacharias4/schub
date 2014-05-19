
<%@ page import="domain.Recruit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recruit.label', default: 'Recruit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recruit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recruit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="communicationChannel" title="${message(code: 'recruit.communicationChannel.label', default: 'Communication Channel')}" />
					
						<g:sortableColumn property="communicationFrequency" title="${message(code: 'recruit.communicationFrequency.label', default: 'Communication Frequency')}" />
					
						<g:sortableColumn property="contactDetails" title="${message(code: 'recruit.contactDetails.label', default: 'Contact Details')}" />
					
						<g:sortableColumn property="disclosureLevel" title="${message(code: 'recruit.disclosureLevel.label', default: 'Disclosure Level')}" />
					
						<g:sortableColumn property="filePayload" title="${message(code: 'recruit.filePayload.label', default: 'File Payload')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'recruit.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recruitInstanceList}" status="i" var="recruitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recruitInstance.id}">${fieldValue(bean: recruitInstance, field: "communicationChannel")}</g:link></td>
					
						<td>${fieldValue(bean: recruitInstance, field: "communicationFrequency")}</td>
					
						<td>${fieldValue(bean: recruitInstance, field: "contactDetails")}</td>
					
						<td>${fieldValue(bean: recruitInstance, field: "disclosureLevel")}</td>
					
						<td>${fieldValue(bean: recruitInstance, field: "filePayload")}</td>
					
						<td>${fieldValue(bean: recruitInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recruitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
