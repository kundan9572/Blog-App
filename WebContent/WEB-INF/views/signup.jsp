<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="./css/style.css">
</head>
<body>

	<nav>
	<img alt="../assets/logo.png" src="logo">
	<ul>
		<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
		<li><a href="${pageContext.request.contextPath}/signup">SignUp</a></li>
	</ul>
	</nav>
	<div class="welcome-back">Learn code Repeat</div>
	<div class="sub-text">CODEWALL is a collaborative learning Platform.</div>
	<div class="signup-form">
		<div class="title">SignUP</div>
		<form action="${pageContext.request.contextPath}/signup" method="post">
			<label class="label" for="email">Email</label>
			<input type="text" name="email" id="email">
			<label class="label" for="password">Password</label>
			<input type="password" name="password" id="password">
			<label class="label" for="password">Conform Password</label>
			<input type="password" name="confirm-password" id="password">
			${message}
			<button type="submit" class="button">Login</button>
		</form>
	</div>
	
</body>
</html>