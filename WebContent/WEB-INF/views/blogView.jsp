<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Code Wall</title>
</head>
<body>

	<nav>
		<img alt="pic" src="./assets/logo.svg"/>
		<ul>
			<li> <a href="${pageContect.request.contextPath}/myblogs">My Blogs </a></li>
			<li> <a href="${pageContect.request.contextPath}/allblogs">All Blogs </a></li>
			<li> <a href="${pageContect.request.contextPath}/login">Login </a></li>
			<li> <a href="${pageContect.request.contextPath}/signup">Sign Up</a></li>
		</ul>
	</nav>
	<div class="body-div1">
		<div>
			Your Blog Posts
		</div>
		
		 <a href="${pageContect.request.contextPath}/new"><button class="button" id="addBlog"><i class="fas fa-plus-circle"></i>Add new Post</button></a>
	</div>


<div class="body-div2">
	<c:forEach var="blog" items="${listBlog}">
	<div class="article-card">
		<img src="./assets/java card image.svg" alt="img"/>
		<div class="card-test">
				<h1 id="blog-title"><c:out value="${blog.getBlogTitle()}"/></h1>
				<p class="blog-description"><c:out value="${blog.getBlogDescription()}"/></p>
				<p>Posted on<b><c:out value="${blog.getPostedOn()}"/></b></p>
		</div>
	
	<div class="card-button">
		<a href="edit?id=<c:out value='${blog.getBlogId()}'/>"> 
			<button type="button" id="edit"> Edit</button></a>
			<span> | </span>
			<button type="button" id="delete"> Delete</button></a>
	</div>
	</div>
	</c:forEach>	
</div>

<div class="body-div3">
	<h1>${message}</h1>
</div>


</body>
</html>