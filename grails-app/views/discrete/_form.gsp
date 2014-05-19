<%@ page import="domain.goal.Discrete" %>



<div class="fieldcontain ${hasErrors(bean: discreteInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="discrete.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${discreteInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: discreteInstance, field: 'milestone', 'error')} required">
	<label for="milestone">
		<g:message code="discrete.milestone.label" default="Milestone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="milestone" required="" value="${discreteInstance?.milestone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: discreteInstance, field: 'filePayload', 'error')} required">
	<label for="filePayload">
		<g:message code="discrete.filePayload.label" default="File Payload" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

