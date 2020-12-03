<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class = "cart_content">
<div class = "product_cart_list" style = "width:${shop_cart.getCart() != null?'70%':'100%'}">
<h5 class = "title_cart" style = "display:${shop_cart.getCart() != null?'block':'none'}">Giỏ hàng(${amount} sản phẩm)</h5>
<h1 style = "display:${shop_cart.getCart() != null?'none':'block'}" class = "noproduct">Bạn chưa có sản phẩm nào</h1>
<table>
<c:forEach var = "product" items = "${shop_cart.getCart()}">
	<tr>
		<td><a href = "${pageContext.request.contextPath }/product/detail/${product.productSeo}"><img src = "${pageContext.request.contextPath }/file/uploads/${product.productAvatar}" /></a></td>
		<td>
			<h4>${product.productTitle}</h4>
			<br>
			<div class="amount">
				<button class="btn">-</button>
				<div class="current-amount">${product.productAmount}</div>
				<button class="btn">+</button>
				<span class = "title_cart">${product.productPrice}₫</span>
			</div>
			<button type="button" class="btn btn-outline-danger">Xoá</button>
		</td>
	</tr>
</c:forEach>
</table>
</div>
<div class = "paycart" style = "display:${shop_cart.getCart() != null?'block':'none'}">
	<div class = "paysale">Mã khuyến mãi</div>
	<div class = "sumprice">Tạm tính: <h5>${ shop_cart.sumPrice} ₫</h5></div>
	<div class = "sumprice">Tổng tiền:<h5>${ shop_cart.sumPrice} ₫</h5></div>
	<a type="button" class="btn btn-danger" href = "${pageContext.request.contextPath }/order">Tiến hành đặt hàng</a>
</div>
</div>