<%@ page import="domain.Suggestion" %>



<div class="fieldcontain ${hasErrors(bean: suggestionInstance, field: 'filePayload', 'error')} required">
	<label for="filePayload">
		<g:message code="suggestion.filePayload.label" default="File Payload" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

<div class="fieldcontain ${hasErrors(bean: suggestionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="suggestion.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${suggestionInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: suggestionInstance, field: 'opinion', 'error')} required">
	<label for="opinion">
		<g:message code="suggestion.opinion.label" default="Opinion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="opinion" required="" value="${suggestionInstance?.opinion}"/>

</div>

