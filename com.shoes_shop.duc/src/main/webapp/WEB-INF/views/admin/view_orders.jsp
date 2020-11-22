<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="dashboard">
                 <jsp:include page="/WEB-INF/views/admin/common/leftContent.jsp"></jsp:include>
                <div class="right">
                    <div class="right__content">
                        <div class="right__title">Bảng điều khiển</div>
                        <p class="right__desc">Xem đơn hàng</p>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Email</th>
                                            <th>Số hoá đơn</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Số lượng</th>
                                            <th>Kích cở</th>
                                            <th>Ngày</th>
                                            <th>Tổng</th>
                                            <th>Trạng thái</th>
                                            <th>Xoá</th>
                                            <th>Thanh toán</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Email">chibaosinger@gmail.com</td>
                                            <td data-label="Số hoá đơn">337203544</td>
                                            <td data-label="Tên sản phẩm">Bata Dress</td>
                                            <td data-label="Số lượng">2</td>
                                            <td data-label="Kích cở">Nhỏ</td>
                                            <td data-label="Ngày">2020-07-13</td>
                                            <td data-label="Tổng">1.180.000 ₫</td>
                                            <td data-label="Trạng thái">Đang Chờ Xử Lý</td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="${pageContext.request.contextPath}/assets/icon-trash-black.svg" alt=""></a></td>
                                            <td data-label="Thanh toán" class="right__confirm">
                                                <a href="" class="right__iconTable"><img src="${pageContext.request.contextPath}/assets/icon-check.svg" alt=""></a>
                                                <a href="" class="right__iconTable"><img src="${pageContext.request.contextPath}/assets/icon-x.svg" alt=""></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Email">dangthimydung@gmail.com</td>
                                            <td data-label="Số hoá đơn">238991444</td>
                                            <td data-label="Tên sản phẩm">Dada Dress</td>
                                            <td data-label="Số lượng">2</td>
                                            <td data-label="Kích cở">Nhỏ</td>
                                            <td data-label="Ngày">2020-07-13</td>
                                            <td data-label="Tổng">590.000 ₫</td>
                                            <td data-label="Trạng thái">Đang Chờ Xử Lý</td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="${pageContext.request.contextPath}/assets/icon-trash-black.svg" alt=""></a></td>
                                            <td data-label="Thanh toán">
                                                <a href="" class="right__iconTable iconConfirm"><img src="${pageContext.request.contextPath}/assets/icon-check.svg" alt=""></a>
                                                <a href="" class="right__iconTable iconConfirm"><img src="${pageContext.request.contextPath}/assets/icon-x.svg" alt=""></a>
                                            </td>
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