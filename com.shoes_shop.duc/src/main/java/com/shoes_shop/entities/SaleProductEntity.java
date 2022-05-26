package com.shoes_shop.entities;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder_products")
public class SaleProductEntity extends BaseEntity{
	@Column(name = "saleorder_id")
	private int saleorder_id;

	@Column(name = "product_id")
	private int product_id;

	@Column(name = "quality")
	private int quality;

	@Column(name = "status")
	private boolean status;
	
	@Column(name = "size")
	private int size;

	public int getSaleorder_id() {
		return saleorder_id;
	}

	public void setSaleorder_id(int saleorder_id) {
		this.saleorder_id = saleorder_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public SaleProductEntity(int saleorder_id, int product_id, int quality, boolean status, int size) {
		super();
		this.saleorder_id = saleorder_id;
		this.product_id = product_id;
		this.quality = quality;
		this.status = status;
		this.size = size;
	}

	public SaleProductEntity() {
	}	
}
