package com.shoes_shop.repositories;


import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.shoes_shop.entities.ProductEntity;

@Repository
public interface ProductRepo extends JpaRepository<ProductEntity,Integer>{
	public List<ProductEntity> findByStatusAndProducttype(boolean stt,String producttype);
	public List<ProductEntity> findByStatus(boolean stt);
	public ProductEntity findBySeo(String seo);
	@Query("SELECT p FROM ProductEntity p WHERE CONCAT(p.title, ' ', p.price, ' ', p.shortDes, ' ', p.producttype) LIKE %?1% and Status = ?2")
	public List<ProductEntity> search(String keyword,boolean stt);
	public List<ProductEntity> findByProducttypeAndStatus(String type,boolean stt);
	public List<ProductEntity> findByPriceLessThanAndStatus(BigDecimal price,boolean stt);
	public List<ProductEntity> findByPriceBetweenAndStatus(BigDecimal startPrice,BigDecimal endPrice,boolean stt);
}
