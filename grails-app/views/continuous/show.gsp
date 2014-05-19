
<%@ page import="domain.goal.Continuous" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'continuous.label', default: 'Continuous')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-continuous" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-continuous" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list continuous">
			
				<g:if test="${continuousInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="continuous.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${continuousInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${continuousInstance?.filePayload}">
				<li class="fieldcontain">
					<span id="filePayload-label" class="property-label"><g:message code="continuous.filePayload.label" default="File Payload" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${continuousInstance?.maxValue}">
				<li class="fieldcontain">
					<span id="maxValue-label" class="property-label"><g:message code="continuous.maxValue.label" default="Max Value" /></span>
					
						<span class="property-value" aria-labelledby="maxValue-label"><g:fieldValue bean="${continuousInstance}" field="maxValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${continuousInstance?.minValue}">
				<li class="fieldcontain">
					<span id="minValue-label" class="property-label"><g:message code="continuous.minValue.label" default="Min Value" /></span>
					
						<span class="property-value" aria-labelledby="minValue-label"><g:fieldValue bean="${continuousInstance}" field="minValue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:continuousInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${continuousInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
