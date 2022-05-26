package com.shoes_shop.model;

import java.util.List;

import java.math.BigDecimal;

public class Dataset {

	public String name;
	public List<BigDecimal> value;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<BigDecimal> getValue() {
		return value;
	}
	public void setValue(List<BigDecimal> value) {
		this.value = value;
	}	
}
