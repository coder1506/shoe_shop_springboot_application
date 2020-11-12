<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="left">
                    <span class="left__icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <div class="left__content">
                        <div class="left__logo">Shoes-shop</div>
                        <div class="left__profile">
                            <div class="left__image"><img src="assets/profile.jpg" alt=""></div>
                            <p class="left__name">${usernameAdmin}</p>
                        </div>
                        <ul class="left__menu">
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/Dashboard" class="left__title"><img src="assets/icon-dashboard.svg" alt="">Dashboard</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-tag.svg" alt="">Sản Phẩm<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/addProduct">Thêm Sản Phẩm</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/viewProduct">Xem Sản Phẩm</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-edit.svg" alt="">Danh Mục SP<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/addCategory">Thêm Danh Mục</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/viewCategory">Xem Danh Mục</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-book.svg" alt="">Thể Loại<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/addTypeProduct">Thêm Thể Loại</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/viewTypeProduct">Xem Thể Loại</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-settings.svg" alt="">Slide<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/addSlide">Thêm Slide</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/viewSlide">Xem Slide</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-book.svg" alt="">Coupons<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/addCoupons">Thêm Coupon</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/viewCoupons">Xem Coupons</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/customers" class="left__title"><img src="assets/icon-users.svg" alt="">Khách Hàng</a>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/order" class="left__title"><img src="assets/icon-book.svg" alt="">Đơn Đặt Hàng</a>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/editCss" class="left__title"><img src="assets/icon-pencil.svg" alt="">Chỉnh CSS</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-user.svg" alt="">Admin<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/addAdmin">Thêm Admin</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/viewAdmin">Xem Admins</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/admin" class="left__title"><img src="assets/icon-logout.svg" alt="">Đăng Xuất</a>
                            </li>
                        </ul>
                    </div>
                </div>