<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<form action = "${pageContext.request.contextPath}/forgetPassword" method = "POST" class="frmaccount">
				<a href="${pageContext.request.contextPath}/account"><i class="fas fa-arrow-left back"></i></a>
				<h1>QUÊN MẬT KHẨU</h1>
				<input type = "text" name = "firstname" class="text" placeholder="Tài khoản" required>
				</br>
				<input type = "text" name = "firstname" class="text" placeholder="Email" required>
				</br>
				<input type = "text" name = "firstname" class="text" placeholder="Số điện thoại" required>
				</br>
				<input type = "submit" value = "SEND" id = "btn-send">
				</br>
				<span>
				</span>
			</form>