<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery/jquery-3.5.1.js"></script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<jsp:include page="/WEB-INF/views/admin/common/leftContent.jsp"></jsp:include>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">${title }</p>
						<div class="right__formWrapper">
							<form:form
								action="${pageContext.request.contextPath}/admin/addproduct"
								modelAttribute="product" method="post"
								enctype="multipart/form-data">
								<form:hidden path="id" />
								<div class="right__inputWrapper">
									<label for="title">Tiêu đề</label>
									<form:input type="text" placeholder="Tiêu đề" path="title" />
								</div>
								<div class="right__inputWrapper">
									<label for="p_category">Danh mục</label>
									<form:select class="form-control form-control-line"
										path="category.id">
										<!-- product.getCategory().setId() -->
										<form:options items="${categories}" itemValue="id"
											itemLabel="name" />
									</form:select>
								</div>
								<!-- <div class="right__inputWrapper">
                                    <label for="category">Thể loại</label>
                                    <select name="">
                                        <option disabled selected>Chọn thể loại</option>
                                        <option value="">Nữ</option>
                                        <option value="">Nam</option>
                                    </select>
                                </div> -->
								<div class="right__inputWrapper">
									<label for="image">Ảnh đại diện</label> <input type="file"
										name="avartarImage">
								</div>
								<div class="right__inputWrapper">
									<label for="image">Ảnh giới thiệu</label> <input type="file"
										name="product_images" multiple="multiple">
								</div>
								<div class="right__inputWrapper">
									<label for="label">Nhãn sản phẩm</label> <select name="">
										<option disabled selected>Nhãn sản phẩm</option>
										<option value="new">Mới</option>
										<option value="sale">Giảm giá</option>
									</select>
								</div>
								<div class="right__inputWrapper">
									<label for="title">Giá sản phẩm</label>
									<form:input type="text" placeholder="Giá sản phẩm" path="price" />
								</div>
								<!--  <div class="right__inputWrapper">
                                    <label for="title">Giá giảm sản phẩm</label>
                                    <input type="text" placeholder="Giá giảm sản phẩm">
                                </div>-->
								<!--<div class="right__inputWrapper">
                                    <label for="title">Từ khoá</label>
                                    <input type="text" placeholder="Từ khoá">
                                </div>-->
								<div class="right__inputWrapper">
									<label for="desc">Mô tả ngắn</label>
									<form:textarea name="" id="" cols="30" rows="5"
										placeholder="Mô tả được hiển thị ở sản phẩm" path="shortDes" />
								</div>
								<div class="right__inputWrapper">
									<label for="desc">Chất liệu và kĩ thuật</label>
									<form:textarea name="" id="" cols="30" rows="5"
										placeholder="Chất liệu và kĩ thuật" path="metarial_vs_skill" />
								</div>
								<div class="right__inputWrapper">
									<label>Details description</label>
									<form:textarea id="editor"
										placeholder="Mô tả được hiển thị ở chi tiết sản phẩm"
										class="form-control" path="shortDetails" />
								</div>
								<button class="btn" type="submit">Chèn</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/js/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</html>