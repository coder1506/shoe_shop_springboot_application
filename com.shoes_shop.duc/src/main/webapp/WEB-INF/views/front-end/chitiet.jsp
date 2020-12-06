<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Chi tiết</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/stylechitiet.css">
</head>
<body>
	<div class="wrapper">
		<!-- title -->
		<div class="title">Welcome to shoes-shop!</div>
		<!-- /title -->
		<!-- menu -->
		<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- /menu -->
		<!-- content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row justify-content-center">
					<div class="col-xl-8 left-info">
						<c:forEach var = "image" items = "${images}">
								<div class="prd">
									<img src="${pageContext.request.contextPath}/file/uploads/${image.path}">
								</div>
						</c:forEach>
					</div>
					<div class="col-xl-4 right-info">
						<h3>${product.title}</h3>
						<div class="code-prd">
							Code:<span>${product.id}</span>
						</div>
						<h5>${product.price}₫</h5>
						<div class="amount">
							<button class="btn minus">-</button>
							<div class="current-amount">1</div>
							<button class="btn plus">+</button>
						</div>
						<h4>Đánh giá</h4>
						<ul class="pagination">
							<li><a href="#" class="s1"><i class="far fa-star"></i></a></li>
							<li><a href="#" class="s2"><i class="far fa-star"></i></a></li>
							<li><a href="#" class="s3"><i class="far fa-star"></i></a></li>
							<li><a href="#" class="s4"><i class="far fa-star"></i></a></li>
							<li><a href="#" class="s5"><i class="far fa-star"></i></a></li>
						</ul>
						<div class="btn-more ct-add-btn">
							<a onclick = "Shop.cartData(${product.id},parseInt($('.current-amount').html()))" >THÊM VÀO GIỎ</a>
						</div>
						<div class="tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#home">Giới thiệu</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#menu1">Chất liệu & kỹ thuật</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#menu2">kích cỡ</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div id="home" class="container tab-pane active">
									<br>
									<p>${product.shortDetails}</p>
								</div>
								<div id="menu1" class="container tab-pane fade">
									<br>
									<p>${product.metarial_vs_skill}</p>
								</div>
								<div id="menu2" class="container tab-pane fade">
									<br>
									<p>${product.size}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row justify-content-center splq">
					<div class="col-12">
						<h2>SẢN PHẨM LIÊN QUAN</h2>
					</div>
					<div class="col-12">
						<div class="row justify-content-center">
						<c:forEach var ="product" items = "${products }">
						<c:if test="${ products.indexOf(product) < 5}">
							<div class="col-xl-2 col-lg-2 col-md-5 prd prd1">
								<a href="${pageContext.request.contextPath}/products/${product.seo}"> <img
									src="${pageContext.request.contextPath}/file/uploads/${product.avatar}">
								</a>
								<div class="cost">
									<a>${product.title}</a> <br> ${product.price}Đ
								</div>
							</div>
							</c:if>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
</body>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</html>