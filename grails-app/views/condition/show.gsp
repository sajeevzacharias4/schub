
<%@ page import="domain.Condition" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'condition.label', default: 'Condition')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-condition" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-condition" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list condition">
			
				<g:if test="${conditionInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="condition.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${conditionInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conditionInstance?.filePayload}">
				<li class="fieldcontain">
					<span id="filePayload-label" class="property-label"><g:message code="condition.filePayload.label" default="File Payload" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conditionInstance?.issues}">
				<li class="fieldcontain">
					<span id="issues-label" class="property-label"><g:message code="condition.issues.label" default="Issues" /></span>
					
						<g:each in="${conditionInstance.issues}" var="i">
						<span class="property-value" aria-labelledby="issues-label"><g:link controller="issue" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conditionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${conditionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
