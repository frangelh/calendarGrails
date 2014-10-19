
<%@ page import="practica8_20091275_20101022.CalendarioUsuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendarioUsuario.label', default: 'CalendarioUsuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-calendarioUsuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-calendarioUsuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="calendarioUsuario.eventos.label" default="Eventos" /></th>
					
						<th><g:message code="calendarioUsuario.usuario.label" default="Usuario" /></th>
					
						<g:sortableColumn property="nombre" title="${message(code: 'calendarioUsuario.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calendarioUsuarioInstanceList}" status="i" var="calendarioUsuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calendarioUsuarioInstance.id}">${fieldValue(bean: calendarioUsuarioInstance, field: "eventos")}</g:link></td>
					
						<td>${fieldValue(bean: calendarioUsuarioInstance, field: "usuario")}</td>
					
						<td>${fieldValue(bean: calendarioUsuarioInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calendarioUsuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
