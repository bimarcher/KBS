<%@ page import="com.yimi.archer.kbs.Agenda" %>



<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="agenda.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="40" required="" value="${agendaInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="agenda.content.label" default="Content" />
		
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="300" value="${agendaInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="agenda.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="300" value="${agendaInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'startTime', 'error')} required">
	<label for="startTime">
		<g:message code="agenda.startTime.label" default="Start Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startTime" precision="day"  value="${agendaInstance?.startTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'endTime', 'error')} required">
	<label for="endTime">
		<g:message code="agenda.endTime.label" default="End Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endTime" precision="day"  value="${agendaInstance?.endTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'createTime', 'error')} required">
	<label for="createTime">
		<g:message code="agenda.createTime.label" default="Create Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createTime" precision="day"  value="${agendaInstance?.createTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'belongToEmp', 'error')} required">
	<label for="belongToEmp">
		<g:message code="agenda.belongToEmp.label" default="Belong To Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="belongToEmp" name="belongToEmp.id" from="${com.yimi.archer.kbs.Employee.list()}" optionKey="id" required="" value="${agendaInstance?.belongToEmp?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'createByEmp', 'error')} required">
	<label for="createByEmp">
		<g:message code="agenda.createByEmp.label" default="Create By Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createByEmp" name="createByEmp.id" from="${com.yimi.archer.kbs.Employee.list()}" optionKey="id" required="" value="${agendaInstance?.createByEmp?.id}" class="many-to-one"/>
</div>

