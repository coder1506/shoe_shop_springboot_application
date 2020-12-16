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
				<div class = "cart_content">
				<div class = "product_cart_list" style = "width:${shop_cart.getCart().size() > 0?'70%':'100%'}">
				<h5 class = "title_cart" style = "display:${shop_cart.getCart().size() > 0?'block':'none'}">Giỏ hàng( ${amount} sản phẩm)</h5>
				<h1 style = "display:${shop_cart.getCart().size() > 0?'none':'block'}" class = "noproduct">
				Bạn chưa có sản phẩm nào
				<br>
				<a href= "${pageContext.request.contextPath}/" class = "btn btn-dark">Tiếp tục mua sắm</a>
				</h1>
				<table>
				<c:forEach var = "product" items = "${shop_cart.getCart()}">
					<tr>
						<td><a href = "${pageContext.request.contextPath}/products/${product.productSeo}"><img src = "${pageContext.request.contextPath }/file/uploads/${product.productAvatar}" /></a></td>
						<td>
							<h4>${product.productTitle}</h4>
							<br>
							<div class="amount">
								<button class="btn">-</button>
								<div class="current-amount" id = "${product.productCode}">${product.productAmount}</div>
								<button class="btn" >+</button>
								<span class = "title_cart">${product.productPrice}₫</span>
							</div>
							<button type="button" class="btn btn-outline-danger" onclick = "Shop.cartDeleteData(${product.productCode});">Xoá</button>
						</td>
					</tr>
				</c:forEach>
				</table>
				</div>
				<div class = "paycart" style = "display:${shop_cart.getCart().size() > 0 ? 'block' : 'none'}">
					<div class = "paysale border-bottom">Mã khuyến mãi</div>
					<div class = "sumprice border-bottom">Tạm tính: <h5>${ shop_cart.sumPrice} ₫</h5></div>
					<div class = "sumprice border-bottom">Tổng tiền:<h5>${ shop_cart.sumPrice} ₫</h5></div>
					<a href="${pageContext.request.contextPath }/user/checkout" class="btn-send btn btn-danger">${currentUser != null ? 'Tiến hành đặt hàng' : 'ĐĂNG NHẬP ĐỂ MUA HÀNG' }</a>
				</div>
				</div>
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