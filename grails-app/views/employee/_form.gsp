<%@ page import="com.yimi.archer.kbs.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="employee.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="20" required="" value="${employeeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="employee.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="7" required="" value="${employeeInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="employee.gender.label" default="Gender" />
		
	</label>
	<g:select name="gender" from="${employeeInstance.constraints.gender.inList}" value="${employeeInstance?.gender}" valueMessagePrefix="employee.gender" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'workMail', 'error')} ">
	<label for="workMail">
		<g:message code="employee.workMail.label" default="Work Mail" />
		
	</label>
	<g:field type="email" name="workMail" maxlength="200" value="${employeeInstance?.workMail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'mobilePhone', 'error')} ">
	<label for="mobilePhone">
		<g:message code="employee.mobilePhone.label" default="Mobile Phone" />
		
	</label>
	<g:textField name="mobilePhone" value="${employeeInstance?.mobilePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="employee.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${employeeInstance.constraints.status.inList}" value="${employeeInstance?.status}" valueMessagePrefix="employee.status" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'memo', 'error')} ">
	<label for="memo">
		<g:message code="employee.memo.label" default="Memo" />
		
	</label>
	<g:textArea name="memo" cols="40" rows="5" maxlength="300" value="${employeeInstance?.memo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'dept', 'error')} ">
	<label for="dept">
		<g:message code="employee.dept.label" default="Dept" />
		
	</label>
	<g:select id="dept" name="dept.id" from="${com.yimi.archer.kbs.Department.list()}" optionKey="id" value="${employeeInstance?.dept?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'agendaBelongToMe', 'error')} ">
	<label for="agendaBelongToMe">
		<g:message code="employee.agendaBelongToMe.label" default="Agenda Belong To Me" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.agendaBelongToMe?}" var="a">
    <li><g:link controller="agenda" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="agenda" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'agenda.label', default: 'Agenda')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'agendaCreateByMe', 'error')} ">
	<label for="agendaCreateByMe">
		<g:message code="employee.agendaCreateByMe.label" default="Agenda Create By Me" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.agendaCreateByMe?}" var="a">
    <li><g:link controller="agenda" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="agenda" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'agenda.label', default: 'Agenda')])}</g:link>
</li>
</ul>

</div>

