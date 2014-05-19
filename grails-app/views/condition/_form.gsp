<%@ page import="domain.Condition" %>



<div class="fieldcontain ${hasErrors(bean: conditionInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="condition.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${conditionInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conditionInstance, field: 'filePayload', 'error')} ">
	<label for="filePayload">
		<g:message code="condition.filePayload.label" default="File Payload" />
		
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

<div class="fieldcontain ${hasErrors(bean: conditionInstance, field: 'issues', 'error')} ">
	<label for="issues">
		<g:message code="condition.issues.label" default="Issues" />
		
	</label>
	<g:select name="issues" from="${domain.Issue.list()}" multiple="multiple" optionKey="id" size="5" value="${conditionInstance?.issues*.id}" class="many-to-many"/>

</div>

