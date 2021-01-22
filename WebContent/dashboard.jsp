<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin:0px;
		box-sizing:border-box;
	}
	.navbar{
		width:100%;
		background-color: #cccccc;
	}
	.nav-items{
		display:inline-block;
	}
	.nav-item{
		display:inline-block;
		width: 130px;
	}
	.nav-item a{
		text-decoration: none;
		color:black;
		font-family: cursive;
		font-weight: bold;
	}
	.loginmodal{
		position: fixed;
		width:200px;
		top:30%;
		left:40%;
		display:none;
	}
	.signupmodal{
		position: fixed;
		width:400px;
		top:30%;
		left:40%;
		display:none;
	}
	.visible{
		display:block;
	}
</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<c:choose>
		<c:when test="${sessionScope.user !=null }">
		
	<div class="container">
		<h1>Hi Welcome,${user.userName}[${user.designation}]</h1>
	</div>
	</c:when>
	<c:otherwise>
		<jsp:forward page="index.jsp"></jsp:forward>
	</c:otherwise>
	</c:choose>
	
	
</body>
</html>