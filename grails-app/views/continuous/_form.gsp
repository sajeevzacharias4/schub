<%@ page import="domain.goal.Continuous" %>



<div class="fieldcontain ${hasErrors(bean: continuousInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="continuous.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${continuousInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: continuousInstance, field: 'filePayload', 'error')} required">
	<label for="filePayload">
		<g:message code="continuous.filePayload.label" default="File Payload" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

<div class="fieldcontain ${hasErrors(bean: continuousInstance, field: 'maxValue', 'error')} required">
	<label for="maxValue">
		<g:message code="continuous.maxValue.label" default="Max Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxValue" type="number" value="${continuousInstance.maxValue}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: continuousInstance, field: 'minValue', 'error')} required">
	<label for="minValue">
		<g:message code="continuous.minValue.label" default="Min Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minValue" type="number" value="${continuousInstance.minValue}" required=""/>

</div>

