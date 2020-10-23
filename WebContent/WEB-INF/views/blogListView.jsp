<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<nav>
		<img alt="pic" src="./assets/logo.svg"/>
		<ul>
			<li> <a href="${pageContext.request.contextPath}/myblogs">My Blogs </a></li>
			<li> <a href="${pageContext.request.contextPath}/allblogs">All Blogs </a></li>
			<li> <a href="${pageContext.request.contextPath}/login">Login </a></li>
			<li> <a href="${pageContext.request.contextPath}/signup">Sign Up</a></li>
		</ul>
	</nav>
	
	<form action= "${pageContext.request.contextPath}/new" method="post">
		<input type="text" id="title" name="title" placeholder="Title"/>
		<textarea id="msg" name="message" placeholder="description" ></textarea>
		<button id="psot" type="submit">POST</button>
	</form>
	
</body>
</html>