<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>create/search member</title>
</head>

<body>
<div class="body">

     <label for="name">Name</label>
	<g:textField name="name" value="${mem?.name}"/>


	<label for="regNo">RegNo</label>
	<g:textField name="regNo" value="${mem?.regNo}"/>



	<label for="age">Age</label>
	<g:textField name="age" value="${mem?.age}"/>



	

  
  
  </div>
</body>
</html>