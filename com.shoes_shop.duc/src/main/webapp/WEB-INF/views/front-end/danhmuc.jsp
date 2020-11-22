<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
	<title>Danh mục</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styledanhmuc.css">
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
				<div class="part-filter top-filter">
					<h3>${categoryname.name }</h3>
					<div href="#" class="buttn top-btn">
						Giới tính
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li>
								<input type="checkbox" name="nam"> Nam
							</li>
							<li>
								<input type="checkbox" name="nu"> Nữ
							</li>
						</ul>
					</div>
					<div class="buttn top-btn">
						<i class="fas fa-sort-alpha-down"></i>
						Mới nhất
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a href="#">Giá: Tăng dần</a></li>
							<li><a href="#">Giá: Giảm dần</a></li>
							<li><a href="#">Tên: A-Z</a></li>
							<li><a href="#">Tên: Z-A</a></li>
							<li><a href="#">Cũ nhất</a></li>
							<li><a href="#">Mới nhất</a></li>
							<li><a href="#">Bán chạy nhất</a></li>
							<li><a href="#">Tồn kho:Giảm dần</a></li>
						</ul>
					</div>
				</div>
				<div class="part-filter bot-filter">
					<div class="buttn top-btn rp-btn">
						Bộ lọc
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li>
								<select id="new" name="new">
								  <option value="title">*Mới nhất</option>
								  <option value="saab">Giá: Giảm dần</option>
								  <option value="fiat">Tên: A-Z</option>
								  <option value="title">Tên: Z-A</option>
								  <option value="saab">Cũ nhất</option>
								  <option value="fiat">Mới nhất</option>
								  <option value="saab">Bán chạy nhất</option>
								  <option value="fiat">Tồn kho:Giảm dần</option>
								</select>
							</li>
							<li>
								<select id="new" name="new">
								  <option value="title">*Giá sản phẩm</option>
								  <option value="saab">Dưới 500,000₫</option>
								  <option value="fiat">500,000₫ - 1,000,000₫</option>
								  <option value="title">1,000,000₫ - 1,500,000₫</option>
								  <option value="saab">2,000,000₫ - 5,000,000₫</option>
								  <option value="fiat">Trên 5,000,000₫</option>
								</select>
							</li>
							<li>
								<select id="new" name="new">
								  <option value="title">*Màu sắc</option>
								  <option value="saab">Xanh</option>
								  <option value="fiat">Đỏ</option>
								  <option value="title">Tím</option>
								  <option value="saab">Vàng</option>
								  <option value="fiat">Hồng</option>
								  <option value="saab">Nâu</option>
								  <option value="fiat">Đen</option>
								  <option value="fiat">Trắng</option>
								</select>
							</li>
							<li>
								<select id="new" name="new">
								  <option value="title">*Kích thước</option>
								  <option value="saab">38</option>
								  <option value="fiat">39</option>
								  <option value="title">40</option>
								  <option value="saab">41</option>
								  <option value="fiat">42</option>
								</select>
							</li>
							<li>
								<select id="new" name="new">
								  <option value="title">*Giới tính</option>
								  <option value="saab">Nam</option>
								  <option value="fiat">Nữ</option>
								</select>
							</li>
							<li>
								<select id="new" name="new">
								  <option value="title">*Loại sản phẩm</option>
								  <option value="saab">Khác</option>
								</select>
							</li>
						</ul>
					</div>
					<h3>
					<i class="fas fa-filter"></i>&nbsp
					Bộ lọc</h3>
					<div href="#" class="buttn bot-btn">
						Loại sản phẩm
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li>
								<input type="checkbox" name=""> khác
							</li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Giá sản phẩm
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" name=""> Dưới 500,000₫</a></li>
							<li><a><input type="checkbox" name=""> 500,000₫ - 1,000,000₫</a></li>
							<li><a><input type="checkbox" name=""> 1,000,000₫ - 1,500,000₫</a></li>
							<li><a><input type="checkbox" name=""> 2,000,000₫ - 5,000,000₫</a></li>
							<li><a><input type="checkbox" name=""> Trên 5,000,000₫</a></li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Màu sắc
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" name=""> Xanh</a></li>
							<li><a><input type="checkbox" name=""> Đỏ</a></li>
							<li><a><input type="checkbox" name=""> Tím</a></li>
							<li><a><input type="checkbox" name=""> Vàng</a></li>
							<li><a><input type="checkbox" name=""> Hồng</a></li>
							<li><a><input type="checkbox" name=""> Nâu</a></li>
							<li><a><input type="checkbox" name=""> Đen</a></li>
							<li><a><input type="checkbox" name=""> Trắng</a></li>
						</ul>
					</div>
					<div href="#" class="buttn bot-btn">
						Kích thước
						&nbsp
						&nbsp
						<i class="fas fa-angle-down"></i>
						<ul class="sub-menu sub-menu-filter">
							<li><a><input type="checkbox" name=""> 38</a></li>
							<li><a><input type="checkbox" name=""> 39</a></li>
							<li><a><input type="checkbox" name=""> 40</a></li>
							<li><a><input type="checkbox" name=""> 41</a></li>
							<li><a><input type="checkbox" name=""> 42</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row justify-content-center">
			<c:forEach var = "product" items = "${products}">
			
				<div class="col-xl-3 col-lg-3 col-md-5 prd">
						<img src="${pageContext.request.contextPath}/images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="${pageContext.request.contextPath}/product/detail/${product.id}">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">${product.title}</a>
							<br>
							${product.price}Đ
						</div>
					</div>
			</c:forEach>
			</div>
				<!--<div class="row justify-content-center">
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp2.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp3.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp4.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp5.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp6.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp7.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp8.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp9.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<img src="../../images/product/sp1.jpg">
						<div class="btn-more add-btn add-btn-m"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="btn-more add-btn ct-btn"><a href="#">CHI TIẾT</a></div>
						<div class="cost">
							<a href="#">Born originals</a>
							<br>
							150.000Đ
						</div>
					</div>
				</div> -->
		</div> 
		<!-- /content -->
		<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
	</div>
</body>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</html>