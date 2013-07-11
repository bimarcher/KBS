
<%@ page import="com.yimi.archer.kbs.Agenda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agenda.label', default: 'Agenda')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-agenda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-agenda" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'agenda.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'agenda.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'agenda.notes.label', default: 'Notes')}" />
					
						<g:sortableColumn property="startTime" title="${message(code: 'agenda.startTime.label', default: 'Start Time')}" />
					
						<g:sortableColumn property="endTime" title="${message(code: 'agenda.endTime.label', default: 'End Time')}" />
					
						<g:sortableColumn property="createTime" title="${message(code: 'agenda.createTime.label', default: 'Create Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${agendaInstanceList}" status="i" var="agendaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${agendaInstance.id}">${fieldValue(bean: agendaInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: agendaInstance, field: "content")}</td>
					
						<td>${fieldValue(bean: agendaInstance, field: "notes")}</td>
					
						<td><g:formatDate date="${agendaInstance.startTime}" /></td>
					
						<td><g:formatDate date="${agendaInstance.endTime}" /></td>
					
						<td><g:formatDate date="${agendaInstance.createTime}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${agendaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
