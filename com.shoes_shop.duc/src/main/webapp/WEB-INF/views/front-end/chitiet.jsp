<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Chi tiết</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
	<link rel="stylesheet" type="text/css" href="../../css/stylechitiet.css">
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
						<ul>
							<li>
								<div class="prd">
									<img src="../../images/product/sp.jpg">
								</div>	
							</li>
							<li>
								<div class="prd">
									<img src="../../images/product/sp.jpg">
								</div>	
							</li>
							<li>
								<div class="prd">
									<img src="../../images/product/sp.jpg">
								</div>	
							</li>
						</ul>
						<ul>
							<li>
								<div class="prd">
									<img src="../../images/product/sp.jpg">
								</div>	
							</li>
							<li>
								<div class="prd">
									<img src="../../images/product/sp.jpg">
								</div>	
							</li>
							<li>
								<div class="prd">
									<img src="../../images/product/sp.jpg">
								</div>	
							</li>
						</ul>
					</div>
					<div class="col-xl-4 right-info">
						<h3>ALEXSANDER MCQUEEN</h3>
						<div class="code-prd">
							Code:<span>6d635y5zs</span>
						</div>
						<h5>500,000₫</h5>
						<div class="amount">
							<button class="btn minus">-</button>
							<div class="current-amount"></div>
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
						<div class="btn-more ct-add-btn"><a href="#">THÊM VÀO GIỎ</a></div>
						<div class="tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item">
									<a class="nav-link active" data-toggle="tab" href="#home">Giới thiệu</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" data-toggle="tab" href="#menu1">Chất liệu & kỹ thuật</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" data-toggle="tab" href="#menu2">kích cỡ</a>
								</li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div id="home" class="container tab-pane active"><br>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.
									</p>
								</div>
								<div id="menu1" class="container tab-pane fade"><br>
									<p>Chất liệu</p>
								</div>
								<div id="menu2" class="container tab-pane fade"><br>
									<p>kích cỡ</p>
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
					<div class="col-xl-2 col-lg-2 col-md-5 prd prd1">
						<a href="#">
							<img src="../../images/product/sp.jpg">
						</a>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<a href="#"><img src="../../images/product/sp1.jpg"></a>
					</div>	
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<a href="#"><img src="../../images/product/sp2.jpg"></a>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-5 prd">
						<a href="#"><img src="../../images/product/sp3.jpg"></a>
					</div>
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