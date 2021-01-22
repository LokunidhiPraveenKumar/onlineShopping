<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body></body><nav class="navbar">
		<ul class="nav-items">
			<li class="nav-item"><a href="home">Home</a></li>
			<li class="nav-item"><a href="products">products</a></li>
			<c:if test="${sessionScope.user.designation == 'manager'}"><li class="nav-item"><a href="add">Add Product</a></li></c:if>
			<c:if test="${sessionScope.user!=null}"><li class="nav-item"><a href="logout">Signout</a></li></c:if>
			<c:if test="${sessionScope.user==null}"><li class="nav-item"><a id="login" href="#">Login</a></li></c:if>
			<c:if test="${sessionScope.user==null}"><li class="nav-item"><a id="signup" href="#">SignUp</a></li></c:if>
		</ul>
			<c:set var="var" value="2"/>
			<c:choose>
			<c:when test="${var==2 }">
			<c:out value="hai"/>
			</c:when>
			<c:when test="${var>2 }">
			<c:out value="haiiii"/>
			</c:when>
			</c:choose>
		<c:forEach items="${count }" var="item"  varStatus="varstatus">
 		<c:if test="${varstatus.first}">
		<c:out value="${varstatus.index }"/>
		</c:if>
		</c:forEach>
</nav>
</body>