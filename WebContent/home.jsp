<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	box-sizing: border-box;
}

.navbar {
	width: 100%;
	background-color: #cccccc;
}

.nav-items {
	display: inline-block;
}

.nav-item {
	display: inline-block;
	width: 130px;
}

.nav-item a {
	text-decoration: none;
	color: black;
	font-family: cursive;
	font-weight: bold;
}

.loginmodal {
	position: fixed;
	width: 200px;
	top: 30%;
	left: 40%;
	display: none;
}

.signupmodal {
	position: fixed;
	width: 400px;
	top: 30%;
	left: 40%;
	display: none;
}

.visible {
	display: block;
}
.container{
	width:80%;
	margin:auto;
	margin:2rem 1rem;
}
.title{
	color:#ffffff;
	background-color: black;
	display:inline;
	
}
.container p{
	margin-top:16px;
	padding:10px;
	box-shadow:0 2px 8px #cccccc;
}


</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<h1 class="title">Home Page</h1>
		<p>It is a long established fact that a reader will be distracted
			by the readable content of a page when looking at its layout. The
			point of using Lorem Ipsum is that it has a more-or-less normal
			distribution of letters, as opposed to using 'Content here, content
			here', making it look like readable English. Many desktop publishing
			packages and web page editors now use Lorem Ipsum as their default
			model text, and a search for 'lorem ipsum' will uncover many web
			sites still in their infancy. Various versions have evolved over the
			years, sometimes by accident, sometimes on purpose (injected humour
			and the like).</p>
	</div>
</body>
</html>