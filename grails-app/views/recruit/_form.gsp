<%@ page import="domain.Recruit" %>



<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'communicationChannel', 'error')} required">
	<label for="communicationChannel">
		<g:message code="recruit.communicationChannel.label" default="Communication Channel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="communicationChannel" required="" value="${recruitInstance?.communicationChannel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'communicationFrequency', 'error')} required">
	<label for="communicationFrequency">
		<g:message code="recruit.communicationFrequency.label" default="Communication Frequency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="communicationFrequency" required="" value="${recruitInstance?.communicationFrequency}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'contactDetails', 'error')} required">
	<label for="contactDetails">
		<g:message code="recruit.contactDetails.label" default="Contact Details" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactDetails" required="" value="${recruitInstance?.contactDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'disclosureLevel', 'error')} required">
	<label for="disclosureLevel">
		<g:message code="recruit.disclosureLevel.label" default="Disclosure Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="disclosureLevel" type="number" value="${recruitInstance.disclosureLevel}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'filePayload', 'error')} required">
	<label for="filePayload">
		<g:message code="recruit.filePayload.label" default="File Payload" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="recruit.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${recruitInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="recruit.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${recruitInstance?.type}"/>

</div>

