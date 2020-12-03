package com.shoes_shop.model;

import java.util.ArrayList;
import java.util.List;

import java.math.BigDecimal;

public class Cart {
	private List<ProductCart> Cart = new ArrayList<ProductCart>();
	public List<ProductCart> getCart() {
		return Cart;
	}
	
	public void setCart(List<ProductCart> cart) {
		Cart = cart;
	}
	
	public BigDecimal getSumPrice() {
		BigDecimal sum = new BigDecimal(0);
		for(ProductCart p : Cart) {
			sum = sum.add(BigDecimal.valueOf(p.getProductAmount()).multiply(p.getProductPrice()));
		}
		return sum;
	}


	public Cart(List<ProductCart> cart) {
		this.Cart = cart;
	}
	
	public Cart() {
	}	
}
