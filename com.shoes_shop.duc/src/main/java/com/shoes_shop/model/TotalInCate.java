package com.shoes_shop.model;

import java.math.BigDecimal;

import javax.persistence.Entity;


public class TotalInCate {
	private String category;
	private BigDecimal total;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public TotalInCate(String category, BigDecimal total) {
		super();
		this.category = category;
		this.total = total;
	}
	public TotalInCate() {
	}
	
}
