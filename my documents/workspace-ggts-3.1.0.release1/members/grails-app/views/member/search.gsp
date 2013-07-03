<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>search</title>
</head>
<body>
  <div class="body">
  <g:form action="search">
  <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
				
				
				<!-- <label for="name">Name</label>
	<g:textField name="name" value="${m?.name}"/><br>
	
	<g:submitButton name="search" class="search" value="${message(code: 'default.button.search.label', default: 'Search')}" />-->
	
	
  </g:form>
  </div>
</body>
</html>