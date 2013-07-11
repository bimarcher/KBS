
<%@ page import="com.yimi.archer.kbs.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'employee.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'employee.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'employee.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="workMail" title="${message(code: 'employee.workMail.label', default: 'Work Mail')}" />
					
						<g:sortableColumn property="mobilePhone" title="${message(code: 'employee.mobilePhone.label', default: 'Mobile Phone')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'employee.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "code")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "workMail")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "mobilePhone")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
