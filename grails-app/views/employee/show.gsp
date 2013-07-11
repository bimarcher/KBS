
<%@ page import="com.yimi.archer.kbs.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="employee.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${employeeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="employee.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${employeeInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="employee.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${employeeInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.workMail}">
				<li class="fieldcontain">
					<span id="workMail-label" class="property-label"><g:message code="employee.workMail.label" default="Work Mail" /></span>
					
						<span class="property-value" aria-labelledby="workMail-label"><g:fieldValue bean="${employeeInstance}" field="workMail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="employee.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${employeeInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="employee.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${employeeInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.memo}">
				<li class="fieldcontain">
					<span id="memo-label" class="property-label"><g:message code="employee.memo.label" default="Memo" /></span>
					
						<span class="property-value" aria-labelledby="memo-label"><g:fieldValue bean="${employeeInstance}" field="memo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.dept}">
				<li class="fieldcontain">
					<span id="dept-label" class="property-label"><g:message code="employee.dept.label" default="Dept" /></span>
					
						<span class="property-value" aria-labelledby="dept-label"><g:link controller="department" action="show" id="${employeeInstance?.dept?.id}">${employeeInstance?.dept?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.agendaBelongToMe}">
				<li class="fieldcontain">
					<span id="agendaBelongToMe-label" class="property-label"><g:message code="employee.agendaBelongToMe.label" default="Agenda Belong To Me" /></span>
					
						<g:each in="${employeeInstance.agendaBelongToMe}" var="a">
						<span class="property-value" aria-labelledby="agendaBelongToMe-label"><g:link controller="agenda" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.agendaCreateByMe}">
				<li class="fieldcontain">
					<span id="agendaCreateByMe-label" class="property-label"><g:message code="employee.agendaCreateByMe.label" default="Agenda Create By Me" /></span>
					
						<g:each in="${employeeInstance.agendaCreateByMe}" var="a">
						<span class="property-value" aria-labelledby="agendaCreateByMe-label"><g:link controller="agenda" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="edit" action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
