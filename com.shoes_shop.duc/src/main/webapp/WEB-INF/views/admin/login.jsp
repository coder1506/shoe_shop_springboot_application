<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/css/loginstyle.css">
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-4.5.2-dist/css/bootstrap.min.css">
</head>
<body>
	<div class="wrapper">
		<div class="leftLogin">
			<h1><b>Login</b></h1>
			<div class="content">
				<form action="${pageContext.request.contextPath}/admin" method = "POST">
					<input type="text" name="username" id="username" placeholder="Username..." required>
					<input type="password" name= "password" id="password" placeholder="Password..." required>
					<br>
					<input type="submit" id="btn-send" class="btn" value = "submit">
				</form>
			</div>
			<footer>
				<h6 style = "color:red">${errorMessageLogin}</h6>
				<a href="#">Forgot password ?</a>
			</footer>
		</div>
	</div>
</body>
</html>