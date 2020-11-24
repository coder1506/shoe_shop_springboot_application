<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<form action="${pageContext.request.contextPath}/accountRegister"
	method="POST" class="frmaccount">
	<a href="${pageContext.request.contextPath}/account"><i
		class="fas fa-arrow-left back"></i></a>
	<h1>ĐĂNG KÍ</h1>
	<input type="text" name="firstname" class="text"
		placeholder="Họ và tên" required> </br> <input type="text"
		name="lastname" class="text" placeholder="Số điện thoại" required>
	</br> <input type="text" name="password" class="text" placeholder="Email"
		required> </br> <input type="text" name="username" class="text"
		placeholder="Tên đăng nhập" required> </br> <input type="password"
		name="password" class="text" placeholder="Mật khẩu" required>
	</br> <input type="password" name="passwordrp" class="text"
		placeholder="Nhập lại mật khẩu" required> </br> <input
		type="submit" value="ĐĂNG KÍ" id="btn-send"> </br> <span> </span>
</form>