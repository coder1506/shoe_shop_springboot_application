package com.shoes_shop.model;

import java.math.BigDecimal;

public class ProductCart {
	private int productCode;
	private int productAmount;
	private BigDecimal productPrice;
	private String productTitle;
	public int getProductCode() {
		return productCode;
	}
	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}
	
	public int getProductAmount() {
		return productAmount;
	}
	public void setProductAmount(int productAmount) {
		this.productAmount = productAmount;
	}
	public BigDecimal getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(BigDecimal productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductTitle() {
		return productTitle;
	}
	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}
	public ProductCart() {
	}
	public ProductCart(int productCode, String productName,BigDecimal productPrice,String productTitle) {
		this.productCode = productCode;
		this.productAmount = productAmount;
		this.productPrice = productPrice;
		this.productTitle =productTitle;
	}
}
