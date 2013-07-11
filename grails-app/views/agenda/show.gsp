
<%@ page import="com.yimi.archer.kbs.Agenda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agenda.label', default: 'Agenda')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-agenda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-agenda" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list agenda">
			
				<g:if test="${agendaInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="agenda.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${agendaInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="agenda.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${agendaInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="agenda.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${agendaInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.startTime}">
				<li class="fieldcontain">
					<span id="startTime-label" class="property-label"><g:message code="agenda.startTime.label" default="Start Time" /></span>
					
						<span class="property-value" aria-labelledby="startTime-label"><g:formatDate date="${agendaInstance?.startTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.endTime}">
				<li class="fieldcontain">
					<span id="endTime-label" class="property-label"><g:message code="agenda.endTime.label" default="End Time" /></span>
					
						<span class="property-value" aria-labelledby="endTime-label"><g:formatDate date="${agendaInstance?.endTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.createTime}">
				<li class="fieldcontain">
					<span id="createTime-label" class="property-label"><g:message code="agenda.createTime.label" default="Create Time" /></span>
					
						<span class="property-value" aria-labelledby="createTime-label"><g:formatDate date="${agendaInstance?.createTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.belongToEmp}">
				<li class="fieldcontain">
					<span id="belongToEmp-label" class="property-label"><g:message code="agenda.belongToEmp.label" default="Belong To Emp" /></span>
					
						<span class="property-value" aria-labelledby="belongToEmp-label"><g:link controller="employee" action="show" id="${agendaInstance?.belongToEmp?.id}">${agendaInstance?.belongToEmp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.createByEmp}">
				<li class="fieldcontain">
					<span id="createByEmp-label" class="property-label"><g:message code="agenda.createByEmp.label" default="Create By Emp" /></span>
					
						<span class="property-value" aria-labelledby="createByEmp-label"><g:link controller="employee" action="show" id="${agendaInstance?.createByEmp?.id}">${agendaInstance?.createByEmp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${agendaInstance?.id}" />
					<g:link class="edit" action="edit" id="${agendaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
