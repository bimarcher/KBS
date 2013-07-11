<%@ page import="com.yimi.archer.kbs.Department" %>



<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="department.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="20" required="" value="${departmentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="department.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="7" required="" value="${departmentInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'memo', 'error')} ">
	<label for="memo">
		<g:message code="department.memo.label" default="Memo" />
		
	</label>
	<g:textArea name="memo" cols="40" rows="5" maxlength="300" value="${departmentInstance?.memo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'emp', 'error')} ">
	<label for="emp">
		<g:message code="department.emp.label" default="Emp" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${departmentInstance?.emp?}" var="e">
    <li><g:link controller="employee" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="employee" action="create" params="['department.id': departmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'employee.label', default: 'Employee')])}</g:link>
</li>
</ul>

</div>

