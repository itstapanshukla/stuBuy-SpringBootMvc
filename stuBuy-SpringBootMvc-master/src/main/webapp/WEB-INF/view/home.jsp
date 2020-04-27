<!DOCTYPE html>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.service.accountdetails.LoginAccount"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/account/signup" method="post">
		<input type="text" name="userphone" placeholder="name"> <input
			type="password" name="password" placeholder="password">
		<button>submit</button>
	</form>

</body>
</html>