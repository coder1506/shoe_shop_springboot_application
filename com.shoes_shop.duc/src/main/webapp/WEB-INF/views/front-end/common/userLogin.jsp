<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<form action = "${pageContext.request.contextPath}/account" method = "POST" class="frmaccount">
				<h1>ĐĂNG NHẬP</h1>
				<input type = "text" name = "username" class="text" placeholder="Tài khoản" required>
				</br>
				<input type = "password" name = "password" class="text" placeholder="Mật khẩu" required>
				</br>
				<input type = "submit" value = "ĐĂNG NHẬP" id = "btn-send">
				</br>
				<span>
				<a href="${pageContext.request.contextPath }/accountRegister">Đăng kí</a> or
				<a href="${pageContext.request.contextPath }/forgetPassword">Quên mật khẩu</a>
				</span>
			</form>