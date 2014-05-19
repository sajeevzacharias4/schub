
<%@ page import="domain.Recruit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recruit.label', default: 'Recruit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recruit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recruit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recruit">
			
				<g:if test="${recruitInstance?.communicationChannel}">
				<li class="fieldcontain">
					<span id="communicationChannel-label" class="property-label"><g:message code="recruit.communicationChannel.label" default="Communication Channel" /></span>
					
						<span class="property-value" aria-labelledby="communicationChannel-label"><g:fieldValue bean="${recruitInstance}" field="communicationChannel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitInstance?.communicationFrequency}">
				<li class="fieldcontain">
					<span id="communicationFrequency-label" class="property-label"><g:message code="recruit.communicationFrequency.label" default="Communication Frequency" /></span>
					
						<span class="property-value" aria-labelledby="communicationFrequency-label"><g:fieldValue bean="${recruitInstance}" field="communicationFrequency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitInstance?.contactDetails}">
				<li class="fieldcontain">
					<span id="contactDetails-label" class="property-label"><g:message code="recruit.contactDetails.label" default="Contact Details" /></span>
					
						<span class="property-value" aria-labelledby="contactDetails-label"><g:fieldValue bean="${recruitInstance}" field="contactDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitInstance?.disclosureLevel}">
				<li class="fieldcontain">
					<span id="disclosureLevel-label" class="property-label"><g:message code="recruit.disclosureLevel.label" default="Disclosure Level" /></span>
					
						<span class="property-value" aria-labelledby="disclosureLevel-label"><g:fieldValue bean="${recruitInstance}" field="disclosureLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitInstance?.filePayload}">
				<li class="fieldcontain">
					<span id="filePayload-label" class="property-label"><g:message code="recruit.filePayload.label" default="File Payload" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="recruit.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recruitInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="recruit.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${recruitInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recruitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recruitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
