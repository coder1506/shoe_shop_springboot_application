<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="header">
	<!--header-top-content  -->
	<div class="header-content">
		<div class="header-top-content">
			<div class="search">
				<form action="#">
					<input type="text" class="color-hover" id="input-search"
						placeholder="Tìm kiếm sản phẩm..." required>
					<button class="color-hover">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>
			<div class="logo">Shoes-shop</div>
			<nav class="header-menu menu-upto500">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link color-hover"
						href="${pageContext.request.contextPath}/home"> TRANG CHỦ </a></li>
					<li class="nav-item sp"><a class="nav-link color-hover"
						href="${pageContext.request.contextPath}/category">SẢN PHẨM
							&nbsp<i class="fas fa-angle-down"></i>
					</a>
						<ul class="sub-menu sub-menu-sp color-hover">
							<c:forEach var="category" items="${categories}">
								<c:if test="${category.categorytype.equals('sản phẩm')}">
									<li><a href="${base}/category/${category.id}">${category.name}</a></li>
								</c:if>
							</c:forEach>
						</ul></li>
					<li class="nav-item lc"><a class="nav-link color-hover"
						href="${pageContext.request.contextPath}/category">PHỤ KIỆN
							KHÁC &nbsp<i class="fas fa-angle-down"></i>
					</a>
						<ul class="sub-menu sub-menu-lc">
							<c:forEach var="category" items="${categories}">
								<c:if test="${category.categorytype.equals('phụ kiện khác')}">
									<li><a href="${base}/category/${category.id}">${category.name}</a></li>
								</c:if>
							</c:forEach>
						</ul></li>
				</ul>
			</nav>
			<div class="account-cart">
				<span class="account"><a
					href="${pageContext.request.contextPath }/account"
					class="color-hover"><i class="far fa-user"></i> Tài khoản</a></span> <span
					class="cart"> <a href="#" class="color-hover"> <i
						class="fas fa-cart-plus"></i> <span class="cart-text">Giỏ
							hàng</span>
				</a>
					<div class="small-circle-cart" id="small-circle-cart">${amount}</div>
					<div class="cart-content">Bạn chưa có sản phẩm nào</div>
				</span> <span class="responsive-menu">
					<div class="rp-menu-exit">
						<i class="fas fa-times"></i>
					</div>
					<button id="rp-menu-btn">
						<i class="fas fa-bars"></i>
						<ul class="nav flex-column content-rp-menu">
							<div class="title-rp-menu">Menu</div>
							<li class="nav-item"><a class="nav-link color-hover"
								href="${pageContext.request.contextPath}/home"> TRANG CHỦ </a></li>
							<li class="nav-item sp"><a href="#">SẢN PHẨM &nbsp</a><i
								class="fas fa-angle-down sp-icon"></i>
								<ul class="sub-menu-sp color-hover">
									<c:forEach var="category" items="${categories}">
										<c:if test="${category.categorytype.equals('sản phẩm')}">
											<li><a href="${base}/category/${category.id}">${category.name}</a></li>
										</c:if>
									</c:forEach>
								</ul></li>
							<li class="nav-item lc"><a
								href="${pageContext.request.contextPath}/category">PHỤ KIỆN
									KHÁC &nbsp</a><i class="fas fa-angle-down lc-icon"></i>
								<ul class="sub-menu-lc">
									<c:forEach var="category" items="${categories}">
										<c:if test="${category.categorytype.equals('phụ kiện khác')}">
											<li><a href="${base}/category/${category.id}">${category.name}</a></li>
										</c:if>
									</c:forEach>
								</ul></li>
							<li class="nav-item rp-account"><a
								href="${pageContext.request.contextPath}/account"><span
									class="account"><a
										href="${pageContext.request.contextPath}/account"
										class="color-hover"><i class="far fa-user"></i> Tài khoản</a></span></i></li>
						</ul>
					</button>
				</span>
			</div>
		</div>
		<!-- responsive-search -->
		<div class="search responsive-search">
			<form action="#">
				<input type="text" class="color-hover" id="input-search"
					placeholder="Tìm kiếm sản phẩm..." required>
				<button class="color-hover">
					<i class="fas fa-search"></i>
				</button>
			</form>
		</div>
		<!-- /responsive-search -->
		<!-- menu -->
		<nav class="header-menu">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link color-hover"
					href="${pageContext.request.contextPath}/home"> TRANG CHỦ </a></li>
				<li class="nav-item sp"><a class="nav-link color-hover"
					href="${pageContext.request.contextPath}/category">SẢN PHẨM
						&nbsp<i class="fas fa-angle-down"></i>
				</a>
					<ul class="sub-menu sub-menu-sp color-hover">
						<c:forEach var="category" items="${categories}">
							<c:if test="${category.categorytype.equals('sản phẩm')}">
								<li><a href="${base}/category/${category.id}">${category.name}</a></li>
							</c:if>
						</c:forEach>
					</ul></li>
				<li class="nav-item lc"><a class="nav-link color-hover"
					href="#">PHỤ KIỆN KHÁC &nbsp<i class="fas fa-angle-down"></i></a>
					<ul class="sub-menu sub-menu-lc">
						<c:forEach var="category" items="${categories}">
							<c:if test="${category.categorytype.equals('phụ kiện khác')}">
								<li><a href="${base}/category/${category.id}">${category.name}</a></li>
							</c:if>
						</c:forEach>
					</ul></li>
			</ul>
		</nav>
		<!-- /menu -->
	</div>
	<!-- header-top-content -->
</header>