<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/cart.css">

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
			<jsp:include page="${form}"></jsp:include>
		</div>
		<!-- /slider -->
		<!-- content -->
		<div class="content"></div>
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/solution.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/scroll.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/shop.js"></script>
</html>