<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
<%-- <c:if test="${sessionScope.user==null}">  
   <%=request.getParameter("message")%>  
</c:if>  --%>
	<div class="container">
		<section class="loginmodal">
			<form action="login" method="post">
				<div class="form-group">
					<label>UserName</label> <input type="text" name="username"
						id="username">
				</div>
				<div class="form-group">
					<label>password</label> <input type="password" name="password"
						id="password">
				</div>
				<input type="submit" value="Login" id="login"> <input
					type="button" value="Cancel" id="cancel">
			</form>
		</section>
		<section class="signupmodal">
			<form action="signup" method="post">
				<div class="form-group">
					<label>id</label> <input type="number" name="uid" id="uid">
				</div>
				<div class="form-group">
					<label>UserName</label> <input type="text" name="username"
						id="username">
				</div>
				<div class="form-group">
					<label>Password</label> <input type="password" name="password"
						id="password">
				</div>
				<div class="form-group">
					<label>Gender</label> <input type="radio" id="gender" name="gender"
						value="male">Male <input type="radio" id="gender"
						name="gender" value="female">FeMale
				</div>
				<div class="form-group">
					<label>Designation</label> <select name="designation">
						<option value="manager">Manager</option>
						<option value="customer">Customer</option>
					</select>
				</div>

				<input type="submit" value="Signup" id="signup"> <input
					type="button" value="Cancel" id="cancelSignup">
			</form>
		</section>
		<div class="errmsg">
			<h3>${message}</h3>
		</div>
	</div>
	<script type="text/javascript">
		const loginLink=document.getElementById('login');
		const signupLink=document.getElementById('signup')
		const cancelBtn=document.getElementById('cancel');
		const cancelSignupBtn=document.getElementById('cancelSignup');
		const signUp=document.getElementById('signup');
		const modalWindow=document.querySelector('.loginmodal');
		const signupModal=document.querySelector('.signupmodal');
		function showLoginHandler()
		{
			signupModal.classList.remove('visible');
			modalWindow.classList.add('visible');
		}
		function cancelLoginHandler()
		{
			modalWindow.classList.remove('visible');
		}
		function showSignupHandler()
		{
			modalWindow.classList.remove('visible');
			signupModal.classList.add('visible');
		}
		function cancelSignupHandler()
		{
			signupModal.classList.remove('visible');
		}
		loginLink.addEventListener('click',showLoginHandler);
		signupLink.addEventListener('click',showSignupHandler);
		cancelBtn.addEventListener('click',cancelLoginHandler);
		cancelSignupBtn.addEventListener('click',cancelSignupHandler);
</script>
</body>
</html>