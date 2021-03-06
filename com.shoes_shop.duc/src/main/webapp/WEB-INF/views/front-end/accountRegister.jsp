<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Giày đẹp</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/stylechitiet.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/account.css">

</head>
<body>
	<div class="wrapper">
		<!-- message -->
		<div class="message">
			<img src="../../images/logo/messege-image.png">
			<div class="message-text">Xin chào bạn ! chúng tôi có thể giúp
				gì cho bạn ?</div>
			<div class="message-box">
				<header class="header-box">Chăm sóc khách hàng</header>
				<div class="content-box"></div>
				<div class="text-typing">
					<form action="#">
						<input type="text" placeholder="Aa">
						<button>
							<i class="fas fa-paper-plane"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
		<!-- /message -->
		<!-- title -->
		<div class="title">Welcome to shoes-shop!</div>
		<!-- /title -->
		<!-- slider -->
		<div class="slider">
			<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
			<form:form action="${pageContext.request.contextPath}/accountRegister"
				modelAttribute = "user"
				method="POST" 
				class="frmaccount">
				<a href="${pageContext.request.contextPath}/user"><i
					class="fas fa-arrow-left back"></i></a>
				<h1>ĐĂNG KÍ</h1>
				<form:input type="text" path = "name" name="name" class="text" placeholder="Họ và tên" required="required" /> 
				</br> 
				<form:input type="email" path ="email" name="email" class="text" placeholder="Email" required="required"/> </br> 
				<form:input type="text" path = "username" name="username" class="text" placeholder="Tên đăng nhập" required="required"/> </br> 
				<form:input type="password" path = "password" name="password" class="text" placeholder="Mật khẩu" required="required"/>
				</br> 
				<input type="submit" value="ĐĂNG KÍ" id="btn-send"> </br> <span> </span>
				<div class="alert alert-danger" role="alert" style = "display:${empty param.error_login ? 'none' : 'block'}">
						${error_message}
				</div>
			</form:form>
		</div>
		<!-- /slider -->
		<!-- content -->
		<div class="content"></div>
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
</body>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</html>