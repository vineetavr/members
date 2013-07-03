<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>search1</title>
</head>
<body>
  <div class="body">
  
  
  <g:if test="${flash.message }">
  <div class="message" role="status">${flash.message}</div>
  </g:if>
  
   <g:form action="shows">
   <label for="name">Name/age/regNo</label>
	<g:textField name="name"/>
<br>

	

  <g:submitButton name="search"  />
  
  </g:form>
  
  
  </div>
</body>
</html>