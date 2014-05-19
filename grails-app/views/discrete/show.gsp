
<%@ page import="domain.goal.Discrete" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'discrete.label', default: 'Discrete')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-discrete" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-discrete" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list discrete">
			
				<g:if test="${discreteInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="discrete.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${discreteInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${discreteInstance?.milestone}">
				<li class="fieldcontain">
					<span id="milestone-label" class="property-label"><g:message code="discrete.milestone.label" default="Milestone" /></span>
					
						<span class="property-value" aria-labelledby="milestone-label"><g:fieldValue bean="${discreteInstance}" field="milestone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${discreteInstance?.filePayload}">
				<li class="fieldcontain">
					<span id="filePayload-label" class="property-label"><g:message code="discrete.filePayload.label" default="File Payload" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:discreteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${discreteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
