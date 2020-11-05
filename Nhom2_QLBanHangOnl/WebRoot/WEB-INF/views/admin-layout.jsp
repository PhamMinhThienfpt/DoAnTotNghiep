<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html> 
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Java5</title>
<link href="css/layout.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<header style="background-image: url('images/3.png');">
			<h1>Đăng Nhập </h1>
		</header>
		<nav style="background-color: pink;">
			<a href="login/login.do" style="color: red;">Login</a>|
		</nav>
		<div style="background-color: pink;background-image: url('images/2.jpg');">
			<jsp:include page="${param.view}" />
		</div>
		<footer>FOOTER</footer>
	</div>
</body>
</html>