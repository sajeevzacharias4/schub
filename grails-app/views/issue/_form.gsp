<%@ page import="domain.Issue" %>



<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="issue.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${issueInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'filePayload', 'error')} required">
	<label for="filePayload">
		<g:message code="issue.filePayload.label" default="File Payload" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

