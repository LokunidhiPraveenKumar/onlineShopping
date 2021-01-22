<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.container {
	width: 50%;
	margin: 10% auto;
	box-shadow: 0 2px 8px #cccccc;
	padding: 2rem;
	text-align: center;
}

.form-group {
	margin: 8px 0;
}
</style>
<title>EditProduct</title>
</head>

<body>
	<%@include file="navbar.jsp"%>
	<%
		//String id=request.getParameter("description");
		//String btnName=request.getParameter("btnName");
		//out.print("haiii");
		//out.print(id);
	%>
	<div class="container">
		<c:choose>
			<c:when test="${msg=='addProduct'}">
				<h3 class="title">Add Product</h3>
			</c:when>
			<c:when test="${msg=='editProduct'}">
				<h3 class="title">Edit Product</h3>
			</c:when>
		</c:choose>

		<c:if test="${msg=='editProduct'}">
			<form action="editProduct" method="post">
				<input type="hidden" name="pid"
					value=<%=request.getParameter("pid")%>>
				<div class="form-group">
					<label for="pname">ProductName</label> <input type="text"
						name="pname" id="pname" value="<%=request.getParameter("pname")%>">
				</div>
				<div class="form-group">
					<label for="imageurl">ImageUrl</label> <input type="text"
						name="imageurl" id="imageUrl"
						value="<%=request.getParameter("imageurl")%>">
				</div>

				<div class="form-group">
					<label for="Description">description</label>
					<textarea rows="5" cols="20" name="description"><%=request.getParameter("description")%></textarea>
				</div>
				<div class="form-group">
					<label for="price">Price</label> <input type="text" name="price"
						value="<%=request.getParameter("price")%>">
				</div>

				<div class="btn-actions">
					<button type="submit">Edit Product</button>
				</div>
			</form>
		</c:if>
		<c:if test="${msg=='addProduct'}">
			<form action="add" method="post">
				<div class="form-group">
					<label for="pid">ProductID</label>
					 	<input type="text" name="pid" id="pid">
				</div>

				<div class="form-group">
					<label for="pname">ProductName</label>
					 	<input type="text" name="pname" id="pname">
				</div>

				<div class="form-group">
					<label for="imageurl">ImageUrl</label> <input type="text"
						name="imageurl" id="imageUrl">
				</div>

				<div class="form-group">
					<label for="Description">description</label>
					<textarea rows="5" cols="20" name="description"></textarea>
				</div>

				<div class="form-group">
					<label for="price">Price</label> <input type="text" name="price">
				</div>

				<div class="btn-actions">
					<button type="submit">Add Product</button>
					<button type="reset">Reset</button>
				</div>
			</form>
		</c:if>
	</div>
</body>
</html>