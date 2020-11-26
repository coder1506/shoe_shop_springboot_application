package com.shoes_shop.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<ProductCart> Cart = new ArrayList<ProductCart>();

	public List<ProductCart> getCart() {
		return Cart;
	}

	public void setCart(List<ProductCart> cart) {
		Cart = cart;
	}

	public Cart(List<ProductCart> cart) {
		this.Cart = cart;
	}

	public Cart() {
	}	
}
