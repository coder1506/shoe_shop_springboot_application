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
</head>
<body>
	<div class="wrapper">
		<!-- message -->
		<div class="message">
			<img
				src="${pageContext.request.contextPath}/images/logo/messege-image.png">
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
			<div class="slide">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="${pageContext.request.contextPath}/file/uploads/slides/${slides.size() > 0 ? slides.get(0).getImage() : 'unnamed.png'}"
								alt="3" width="1100" height="500">
							<h3 class="clsl1 title-slide">${slides.size() > 0 ? slides.get(0).getTitle() : ""}</h3>
							<div class="btn-more btn-mn">
								<a href="${pageContext.request.contextPath}/${slides.size() > 0 ? slides.get(0).getUrl() : '/'}" class = "slide-btn">Mua ngay</a>
							</div>
						</div>
						<c:forEach var = "slide" items = "${slides }">
						<c:if test = "${slides.indexOf(slide) != 0}">
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath}/file/uploads/slides/${slide.getImage()}"
								alt="4" width="1100" height="500">
							<h3 class="title-slide">${slide.getTitle()}</h3>
							<div class="btn-more btn-mn ">
								<a href="${pageContext.request.contextPath}/${slide.getUrl()}" class = "slide-btn">Mua ngay</a>
							</div>
						</div></c:if>
						</c:forEach>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev prev ds" href="#demo"
						data-slide="prev"> <span><i class="fas fa-arrow-left"></i></span>
					</a> <a class="carousel-control-next next ds" href="#demo"
						data-slide="next"> <span><i class="fas fa-arrow-right"></i></span>
					</a>
				</div>
			</div>
		</div>
		<!-- /slider -->
		<!-- content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row justify-content-center fade1 ">
					<div class="col-xl-3 col-lg-3 col-md-5 product-block">
						<div class="heading-panel">
							<h2>Sản phẩm mới nhất</h2>
							<div class="btn-more">
								<a href="${pageContext.request.contextPath}/productlabel/${'san-pham-moi-nhat'}">Xem
									thêm</a>
							</div>
						</div>
					</div>
					<c:forEach var="product" items="${productMn}">
						<c:if test="${product.producttype.equals('san-pham-moi-nhat') == true && productMn.indexOf(product) < 5}">
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
									<b>${product.title}</b>
									<span style="display:${product.price_sale != null ? 'inline' :'none' }" class = "price">${product.getPriceFormat(product.price_sale)}</span>
									&nbsp &nbsp
									<span class = " price ${product.price_sale != null ? 'old-cost' :'' }">${product.getPriceFormat(product.price)}</span> 
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="row justify-content-center fade3">
					<div class="col-xl-3 col-lg-3 col-md-5 product-block">
						<div class="heading-panel">
							<h2>Sản phẩm nổi bật</h2>
							<div class="btn-more">
								<a href="${pageContext.request.contextPath}/productlabel/${'san-pham-noi-bat'}">Xem
									thêm</a>
							</div>
						</div>
					</div>
					<c:forEach var="product" items="${productNb}">
						<c:if test="${product.producttype.equals('san-pham-noi-bat') == true && productNb.indexOf(product) < 5}">
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
									<a>${product.title}</a> <br> 
									<span style="display:${product.price_sale != null ? 'inline' :'none' }" class = "price">${product.getPriceFormat(product.price_sale)}</span>
									&nbsp &nbsp
									<span class = "price ${product.price_sale != null ? 'old-cost' :'' }">${product.getPriceFormat(product.price)}</span>  
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="row justify-content-center fade3">
					<div class="col-xl-3 col-lg-3 col-md-5 product-block">
						<div class="heading-panel">
							<h2>Sản phẩm giảm giá</h2>
							<div class="btn-more">
								<a href="${pageContext.request.contextPath}/productlabel/${'san-pham-giam-gia'}">Xem
									thêm</a>
							</div>
						</div>
					</div>
					<c:forEach var="product" items="${productGg}">
						<c:if test="${product.producttype.equals('san-pham-giam-gia') == true && productGg.indexOf(product) < 5}">
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
									<span style="display:${product.price_sale != null ? 'inline' :'none' }" class = "price">${product.getPriceFormat(product.price_sale)}</span>
									&nbsp &nbsp
									<span class = "price ${product.price_sale != null ? 'old-cost' :'' }">${product.getPriceFormat(product.price)}</span> 
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<!-- /content -->
				<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
			</div>
</body>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</html>