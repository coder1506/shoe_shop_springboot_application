package com.shoes_shop.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_products")
public class ProductEntity extends BaseEntity {
	@Column(name = "title", length = 500, nullable = false)
	private String title;

	@Column(name = "avatar", length = 500, nullable = false)
	private String avatar;
	
	@Column(name = "price", precision = 13, scale = 2, nullable = false)
	private BigDecimal price;
	@Column(name = "producttype", precision = 13, scale = 2, nullable = false)
	private String producttype;

	@Column(name = "short_description", length = 3000, nullable = false)
	private String shortDes;

	@Lob
	@Column(name = "detail_description", nullable = false, columnDefinition = "LONGTEXT")
	private String shortDetails;

	@Column(name = "seo", nullable = false)
	private String seo;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private CategoryEntity category;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "product", fetch = FetchType.EAGER, orphanRemoval = true)
	private List<ProductImages> productImages = new ArrayList<ProductImages>();
	
	public void addProductImages(ProductImages _productImages) {
		_productImages.setProduct(this);
		productImages.add(_productImages);
	}
	
	public void removeProductImages(ProductImages _productImages) {
		_productImages.setProduct(null);
		productImages.remove(_productImages);
	}

	public void removeProductImages() {
		for(ProductImages productImages : productImages) {
			removeProductImages(productImages);
		}
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getProducttype() {
		return producttype;
	}

	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getShortDes() {
		return shortDes;
	}

	public void setShortDes(String shortDes) {
		this.shortDes = shortDes;
	}

	public String getShortDetails() {
		return shortDetails;
	}

	public void setShortDetails(String shortDetails) {
		this.shortDetails = shortDetails;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public List<ProductImages> getProductImages() {
		return productImages;
	}

	public void setProductImages(List<ProductImages> productImages) {
		this.productImages = productImages;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

}
