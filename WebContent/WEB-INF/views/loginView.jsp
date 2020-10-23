<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Code Wall</title>
<link type= "text/css" rel="stylesheet"  href="./css/style.css">
</head>
<body>
	<nav>
	<img alt="../assets/logo.png" src="logo">
	<ul>
		<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
		<li><a href="${pageContext.request.contextPath}/signup">SignUp</a></li>
	</ul>
	</nav>
	<div class="welcome-back">Welcome Back</div>
	<div class="sub-text">Share something new that you learn today with code wall community</div>
	<div class="login-form">
		<div class="title">Login</div>
		<form action="${pageContext.request.contextPath}/login" method="post">
			<label class="label" for="email">Email</label>
			<input type="text" name="email" id="email">
			<label class="label" for="password">Password</label>
			<input type="password" name="password" id="password">
			<button type="submit" class="button">Login</button>
			<a class="forgot-password" href="">Forgot Password</a>
		</form>
	</div>

</body>
</html>