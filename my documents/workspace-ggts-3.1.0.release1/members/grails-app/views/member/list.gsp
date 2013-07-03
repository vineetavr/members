<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Member list</title>

<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <div class="body">
    <ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="new member" args="[member]" /></g:link></li>
			<li><g:link class="search" action="search"><g:message code="search member" args="[member]"/></g:link></li>
			<li><g:link class="search1" action="shows"><g:message code="search member1" /></g:link></li>
			
		</ul>	
			
			
   <table>
				<thead>
					<tr>
					
						
					<th>regNo</th>
						<th>name</th>
						
						<th>age</th>
						
						<th>membership</th>
					
					</tr>
				</thead>
				<tbody>
				
				<g:each in="${memList}" status="i" var="mem">
					<tr>
					
						<td>${fieldValue(bean: mem, field: "regNo")}</td>
						
						<td>${fieldValue(bean: mem, field: "name")}</td>
						
					
						<td>${fieldValue(bean: mem, field: "age")}</td>
						
						
						<td>
						
						
						
						<g:each var="m" in="${member?.memberships }" >
					
					
					${m.name }
					
					<g:if test="${!member?.membership}">none</g:if>
					
					
						</g:each>
						
						</td>
						
					</tr>
					
				</g:each>
				
				</tbody>
			</table>
  
  </div>
</body>
</html>