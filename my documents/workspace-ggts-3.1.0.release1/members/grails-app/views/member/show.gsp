<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>member list
</title>
</head>
<body>
  <div class="body">
  <a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="home"/></a></li>
				<li><g:link class="list" action="list"><g:message code="member list" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="new member" args="[entityName]" /></g:link></li>
			
			</ul>
		</div>
		
			<h1><g:message code="show member" args="[entityName]" /></h1>
			
			<ol class="property-list member">
			
				<g:if test="${mem?.regNo}">
				<label for=regNo>RegNo</label>
		<g:fieldValue bean="${mem}" field="regNo"/><br>
		       </g:if><br>
				
				<g:if test="${mem?.age}">
				<label for=age>Age</label>
		<g:fieldValue bean="${mem}" field="age"/><br>
		       </g:if><br>
				
				<g:if test="${mem?.name}">
                <label for=name>Name</label>
		<g:fieldValue bean="${mem}" field="name"/><br>
		           </g:if><br>
		           
	<g:form>
	           
	<g:hiddenField name="id" value="${mem.id }"/>		
	<g:link class="edit" action="edit" id="${mem.id}"><g:message code="Edit" args="[entityName]" /></g:link>
			</g:form>
			</ol>
			
  </div>
</body>
</html>