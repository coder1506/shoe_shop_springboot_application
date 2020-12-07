<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Giày đẹp</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/styledanhmuc.css">

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
			<div class="container-fluid">
				<div class = "search__title">
					<h1>Tìm kiếm</h1>
					<div>Có ${resultSearching.size()} kết quả cho tìm kiếm</div>
				</div>
				<span class="result__for">kết quả tìm kiếm cho <b>"${param.key}"</b></span>
				<div class="row justify-content-center fade1 ">
					<c:forEach var="product" items="${resultSearching}">
							<div class="col-xl-3 col-lg-3 col-md-5 prd">
								<img
									src="${pageContext.request.contextPath}/file/uploads/${product.avatar}">
								<div class="btn-more add-btn add-btn-m">
									<a onclick = "Shop.cartData(${product.id},1)">THÊM VÀO GIỎ</a>
								</div>
								<div class="btn-more add-btn ct-btn">
									<a
										href="${pageContext.request.contextPath}/products/${product.seo}">CHI
										TIẾT</a>
								</div>
								<div class="cost">
									<a>${product.title}</a> <br> ${product.price}Đ
								</div>
							</div>
					</c:forEach>
				</div>
		</div>
		<!-- /slider -->
		<!-- content -->
		<div class="content">
				</div>
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/scroll.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/shop.js"></script>
</html>