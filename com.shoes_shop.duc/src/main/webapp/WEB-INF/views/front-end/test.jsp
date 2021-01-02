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
<body onload = "document.getElementById('btn-cl').click();">
	<input style="display:none" id ="cate" value = "${currentCategorySeo}"/>
	<div class="wrapper"  id = "app">
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
					<div class="buttn top-btn" id = "filterSort">
						<i class="fas fa-sort-alpha-down"></i> Sắp xếp theo &nbsp &nbsp <i
							class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter" id = "sortFilter">
							<li><a id="td" v-on:click = "setSort('td','Giá: Tăng dần')">Giá: Tăng dần</a></li>
							<li><a id="gd" v-on:click = "setSort('gd','Giá: Giảm dần')">Giá: Giảm dần</a></li>
							<li><a id="az" v-on:click = "setSort('az','Tên: A-Z')">Tên: A-Z</a></li>
							<li><a id="za" v-on:click = "setSort('za','Tên: Z-A')">Tên: Z-A</a></li>
							<li><a id="old">Cũ nhất</a></li>
							<li><a id="new">Mới nhất</a></li>
							<li><a id="bcn">Bán chạy nhất</a></li>
							<li><a id="gdan">Tồn kho:Giảm dần</a></li>
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
							<li><input type="checkbox" v-model="filterApplied" name="price" value = "Dưới 500,000₫"> Dưới
									500,000₫</li>
							<li><input type="checkbox" v-model="filterApplied" name="price" value = "500,000₫-1,000,000₫"> 500,000₫
									- 1,000,000₫</li>
							<li><input type="checkbox" v-model="filterApplied" name="price" value = "1,000,000₫-1,500,000₫">
									1,000,000₫ - 1,500,000₫</li>
							<li><input type="checkbox" v-model="filterApplied" name="price" value = "1,500,000₫-5,000,000₫">
									1,500,000₫ - 5,000,000₫</a></li>
							<li><input type="checkbox" v-model="filterApplied" name="price" value = "Trên 5,000,000₫"> Trên
									5,000,000₫</li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Màu sắc &nbsp &nbsp <i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" path= "colorProduct" name="color" value = "blue" onchange = "filter.setFilterApplied()"> Xanh</a></li>
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
			<span v-bind:class = "filterApplied.length == 0 && sort == null ? 'filter_status dpn' : 'filter_status'" id = "filter_status" >
			Trạng thái lọc:
				<span v-for = "item in filterApplied" class = "filter_selected">Giá:{{item}}<span class = "btn-close"><i class="fas fa-window-close" v-on:click = "setfilterApplied(item)"></i></span></span>
				<span v-bind:class = "sort == null ? 'filter_selected dpn':'filter_selected'">{{sort}}<span class = "btn-close"><i class="fas fa-window-close" v-on:click = "setSortNull()"></i></span></span>
			</span>
			</div>
			<div class="container-fluid">
				<div class="row justify-content-center">
				<button style = "display:none" id = "btn-cl" v-on:click = "setCate()"></button>
						<div class="col-xl-3 col-lg-3 col-md-5 prd" v-for = "product in filterItems">
							<img
								v-bind:src="'${pageContext.request.contextPath}/file/uploads/'+product.avatar">
							<div class="btn-more add-btn add-btn-m">
								<a v-on:click = "setCartData(product.id,1,product.size)">THÊM VÀO GIỎ</a>
							</div>
							<div class="btn-more add-btn ct-btn">
								<a
									v-bind:href="'${pageContext.request.contextPath}/products/'+product.seo">CHI
									TIẾT</a>
							</div>
							<div class="cost">
									<b>{{product.title}}</b>
									<span v-bind:class = "product.price_sale != null ? 'price' : 'price dpn'">{{formatPrice(product.price_sale)}}</span>
									&nbsp &nbsp
									<span v-bind:class = "product.price_sale != null ? 'price old-cost' :'price' ">{{formatPrice(product.price)}}</span> 
							</div>
						</div>
				</div>
			</div>
			<!-- /content -->
			<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
		</div>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/vue.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/axios.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/vueDanhMuc.js"></script>
</html>