package com.shoes_shop.model;

public class ProductFilter {
	private String sortBy;
	private String priceProduct;
	private String colorProduct;
	private String size;
	private String sex;
	private String typeProduct;
	public String getSortBy() {
		return sortBy;
	}
	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}
	public String getPriceProduct() {
		return priceProduct;
	}
	public void setPriceProduct(String priceProduct) {
		this.priceProduct = priceProduct;
	}
	public String getColorProduct() {
		return colorProduct;
	}
	public void setColorProduct(String colorProduct) {
		this.colorProduct = colorProduct;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTypeProduct() {
		return typeProduct;
	}
	public void setTypeProduct(String typeProduct) {
		this.typeProduct = typeProduct;
	}
	public ProductFilter(String sortBy, String priceProduct, String colorProduct, String size, String sex,
			String typeProduct) {
		this.sortBy = sortBy;
		this.priceProduct = priceProduct;
		this.colorProduct = colorProduct;
		this.size = size;
		this.sex = sex;
		this.typeProduct = typeProduct;
	}
	public ProductFilter() {
	}
	
}
