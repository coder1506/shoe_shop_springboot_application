<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
											<th style="text-align: center;">Hình ảnh</th>
											<th>Tên</th>
											<th>Email</th>
											<th>Phone</th>
											<th>Địa chỉ</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td data-label="STT">1</td>
											<td data-label="Hình ảnh" style="text-align: center;"><img
												style="width: 50px; height: 50px; border-radius: 100%; object-fit: cover;"
												src="${pageContext.request.contextPath}/assets/profile1.jpg"
												alt=""></td>
											<td data-label="Tên">dangthimydung</td>
											<td data-label="Email">dangthimydung@gmail.com</td>
											<td data-label="Phone">0836730193</td>
											<td data-label="Địa chỉ">Cà Mau</td>
											<td data-label="Xoá" class="right__iconTable"><a href=""><img
													src="${pageContext.request.contextPath}/assets/icon-trash-black.svg"
													alt=""></a></td>
										</tr>
										<tr>
											<td data-label="STT">1</td>
											<td data-label="Hình ảnh" style="text-align: center;"><img
												style="width: 50px; height: 50px; border-radius: 100%; object-fit: cover;"
												src="${pageContext.request.contextPath}/assets/profile.jpg"
												alt=""></td>
											<td data-label="Tên">chibaosinger</td>
											<td data-label="Email">chibaosinger@gmail.com</td>
											<td data-label="Phone">0836730193</td>
											<td data-label="Địa chỉ">Cà Mau</td>
											<td data-label="Xoá" class="right__iconTable"><a href=""><img
													src="${pageContext.request.contextPath}/assets/icon-trash-black.svg"
													alt=""></a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>