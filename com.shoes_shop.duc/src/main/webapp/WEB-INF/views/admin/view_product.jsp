<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<jsp:include page="/WEB-INF/views/admin/common/leftContent.jsp"></jsp:include>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem sản phẩm</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>Tên sản phẩm</th>
											<th>Hình ảnh</th>
											<th>Giá SP</th>
											<th>Đã bán</th>
											<th>Từ khoá</th>
											<th>Thời gian</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="product" items="${products}">
											<tr>
												<td data-label="STT">${products.indexOf(product)+1}</td>
												<td data-label="Tên sản phẩm">${product.title}</td>
												<td data-label="Hình ảnh"><img
													src="${pageContext.request.contextPath}/images/product1.jpg"
													alt=""></td>
												<td data-label="Giá SP">${product.price}</td>
												<td data-label="Đã bán">1</td>
												<td data-label="Từ khoá">dress,vay</td>
												<td data-label="Thời gian">2020-07-13 21:31:05</td>
												<td data-label="Sửa" class="right__iconTable"><a
													href="${pageContext.request.contextPath}/admin/repairproduct/${product.id}"><img
														src="${pageContext.request.contextPath}/assets/icon-edit.svg"
														alt=""></a></td>
												<td data-label="Xoá" class="right__iconTable"><a
													onclick="deletePrd(${product.id});"><img
														src="${pageContext.request.contextPath}/assets/icon-trash-black.svg"
														alt=""></a></td>
											</tr>
										</c:forEach>
										<!-- <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Tên sản phẩm">Dada Dress</td>
                                            <td data-label="Hình ảnh"><img src="${pageContext.request.contextPath}/images/product1.jpg" alt=""></td>
                                            <td data-label="Giá SP">590.000 ₫</td>
                                            <td data-label="Đã bán">1</td>
                                            <td data-label="Từ khoá">dress,vay</td>
                                            <td data-label="Thời gian">2020-07-13 21:31:05</td>
                                            <td data-label="Sửa" class="right__iconTable"><a href=""><img src="${pageContext.request.contextPath}/assets/icon-edit.svg" alt=""></a></td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="${pageContext.request.contextPath}/assets/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">2</td>
                                            <td data-label="Tên sản phẩm">Cobi Top, Tuta Skirt</td>
                                            <td data-label="Hình ảnh"><img src="${pageContext.request.contextPath}/images/product2.jpg" alt=""></td>
                                            <td data-label="Giá SP">810.000 ₫</td>
                                            <td data-label="Đã bán">0</td>
                                            <td data-label="Từ khoá">top skirt</td>
                                            <td data-label="Thời gian">2020-07-13 22:19:01</td>
                                            <td data-label="Sửa" class="right__iconTable"><a href=""><img src="${pageContext.request.contextPath}/assets/icon-edit.svg" alt=""></a></td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="${pageContext.request.contextPath}/assets/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">3</td>
                                            <td data-label="Tên sản phẩm">Beda Dress</td>
                                            <td data-label="Hình ảnh"><img src="${pageContext.request.contextPath}/images/product3.jpg" alt=""></td>
                                            <td data-label="Giá SP">590.000 ₫</td>
                                            <td data-label="Đã bán">1</td>
                                            <td data-label="Từ khoá">dress, vay</td>
                                            <td data-label="Thời gian">2020-07-13 21:30:41</td>
                                            <td data-label="Sửa" class="right__iconTable"><a href="${pageContext.request.contextPath}/admin/product/repairproduct"><img src="${pageContext.request.contextPath}/assets/icon-edit.svg" alt=""></a></td>
                                            <td data-label="Xoá" class="right__iconTable"><a href="${pageContext.request.contextPath}/admin/product/deleteproduct"><img src="${pageContext.request.contextPath}/assets/icon-trash-black.svg" alt=""></a></td>
                                        </tr> -->
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>