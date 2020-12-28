<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Danh mục</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/styledanhmuc.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/sweetalert/dist/sweetalert2.min.css">
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
			<div class="filter">
			<form:form action = "${pageContext.request.contextPath}/filter" method = "get" modelAttribute = "productFilter">
				<div class="part-filter top-filter">
					<h3 name = "category_name">${categoryname}</h3>
					<div href="#" class="buttn top-btn">
						Giới tính &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><input type="checkbox" name="nam" path= "sex"> Nam</li>
							<li><input type="checkbox" name="nu" path= "sex"> Nữ</li>
						</ul>
					</div>
					<div class="buttn top-btn">
						<i class="fas fa-sort-alpha-down"></i> Sắp xếp theo &nbsp &nbsp <i
							class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a path= "sortBy">Giá: Tăng dần</a></li>
							<li><a path= "sortBy">Giá: Giảm dần</a></li>
							<li><a path= "sortBy">Tên: A-Z</a></li>
							<li><a path= "sortBy">Tên: Z-A</a></li>
							<li><a path= "sortBy">Cũ nhất</a></li>
							<li><a path= "sortBy">Mới nhất</a></li>
							<li><a path= "sortBy">Bán chạy nhất</a></li>
							<li><a path= "sortBy">Tồn kho:Giảm dần</a></li>
						</ul>
					</div>
				</div>
				<div class="part-filter bot-filter">
					<h3>
						<i class="fas fa-filter"></i>&nbsp Bộ lọc
					</h3>
					<div href="#" class="buttn bot-btn">
						Loại sản phẩm &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><input type="checkbox" name=""> khác</li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Giá sản phẩm &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" path= "priceProduct" name="price" value = "duoi-500000" onchange = "this.form.submit()"> Dưới
									500,000₫</a></li>
							<li><a><input type="checkbox" path= "priceProduct" name="price" value = "500000-1000000" onchange = "this.form.submit()"> 500,000₫
									- 1,000,000₫</a></li>
							<li><a><input type="checkbox" path= "priceProduct" name="price" value = "1000000-1500000" onchange = "this.form.submit()">
									1,000,000₫ - 1,500,000₫</a></li>
							<li><a><input type="checkbox" path= "priceProduct" name="price" value = "2000000-5000000" onchange = "this.form.submit()">
									2,000,000₫ - 5,000,000₫</a></li>
							<li><a><input type="checkbox" path= "priceProduct" name="price" value = "tren-500000" onchange = "this.form.submit()"> Trên
									5,000,000₫</a></li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Màu sắc &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" path= "colorProduct" name="color" value = "blue" onchange = "this.form.submit()"> Xanh</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "red" onchange = "this.form.submit()"> Đỏ</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "purple" onchange = "this.form.submit()"> Tím</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "yellow" onchange = "this.form.submit()"> Vàng</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "pink" onchange = "this.form.submit()"> Hồng</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "brown" onchange = "this.form.submit()"> Nâu</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "black" onchange = "this.form.submit()"> Đen</a></li>
							<li><a><input type="checkbox" path= "colorProduct" value = "white" onchange = "this.form.submit()"> Trắng</a></li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Kích thước &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" path= "size" name=""> 38</a></li>
							<li><a><input type="checkbox" path= "size" name=""> 39</a></li>
							<li><a><input type="checkbox" path= "size" name=""> 40</a></li>
							<li><a><input type="checkbox" path= "size" name=""> 41</a></li>
							<li><a><input type="checkbox" path= "size" name=""> 42</a></li>
						</ul>
					</div>
				</div></form:form>
				<!-- filter responsive -->
				<div class="buttn top-btn rp-btn">
						Bộ lọc &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><select id="new" name="new">
									<option value="title" disabled>*Mới nhất</option>
									<option value="saab">Giá: Giảm dần</option>
									<option value="fiat">Tên: A-Z</option>
									<option value="title">Tên: Z-A</option>
									<option value="saab">Cũ nhất</option>
									<option value="fiat">Mới nhất</option>
									<option value="saab">Bán chạy nhất</option>
									<option value="fiat">Tồn kho:Giảm dần</option>
							</select></li>
							<li><select id="new" name="new">
									<option value="title" disabled>*Giá sản phẩm</option>
									<option value="saab">Dưới 500,000₫</option>
									<option value="fiat">500,000₫ - 1,000,000₫</option>
									<option value="title">1,000,000₫ - 1,500,000₫</option>
									<option value="saab">2,000,000₫ - 5,000,000₫</option>
									<option value="fiat">Trên 5,000,000₫</option>
							</select></li>
							<li><select id="new" name="new">
									<option value="title" disabled>*Màu sắc</option>
									<option value="saab">Xanh</option>
									<option value="fiat">Đỏ</option>
									<option value="title">Tím</option>
									<option value="saab">Vàng</option>
									<option value="fiat">Hồng</option>
									<option value="saab">Nâu</option>
									<option value="fiat">Đen</option>
									<option value="fiat">Trắng</option>
							</select></li>
							<li><select id="new" name="new">
									<option value="title" disabled>*Kích thước</option>
									<option value="saab">38</option>
									<option value="fiat">39</option>
									<option value="title">40</option>
									<option value="saab">41</option>
									<option value="fiat">42</option>
							</select></li>
							<li><select id="new" name="new" >
									<option value="title" disabled>*Giới tính</option>
									<option value="saab">Nam</option>
									<option value="fiat">Nữ</option>
							</select></li>
							<li><select id="new" name="new">
									<option value="title" disabled>*Loại sản phẩm</option>
									<option value="saab">Khác</option>
							</select></li>
						</ul>
					</div>
				<!-- /filter responsive -->
			</div>
			<div class="container-fluid">
				<div class="row justify-content-center">
					<c:forEach var="product" items="${products}">

						<div class="col-xl-3 col-lg-3 col-md-5 prd">
							<img
								src="${pageContext.request.contextPath}/file/uploads/${product.avatar}">
							<div class="btn-more add-btn add-btn-m">
								<a onclick = "cartData(${product.id},1,`${product.size}`)">THÊM VÀO GIỎ</a>
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
					</c:forEach>
				</div>
			</div>
			<!-- /content -->
			<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
		</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/shop.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap-4.5.2-dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/scroll.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert/dist/sweetalert2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert/sweetalert2.js"></script>
</html>