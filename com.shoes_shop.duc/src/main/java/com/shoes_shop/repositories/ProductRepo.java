package com.shoes_shop.repositories;


import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.shoes_shop.entities.CategoryEntity;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.entities.SaleProductEntity;

@Repository
public interface ProductRepo extends JpaRepository<ProductEntity,Integer>{
	public Page<ProductEntity> findByStatus(boolean stt,Pageable page);
	public List<ProductEntity> findByStatus(boolean stt);
	public ProductEntity findBySeo(String seo);
	public Page<ProductEntity> findByProducttypeAndStatus(String type,boolean stt,Pageable page);
	public List<ProductEntity> findByProducttypeAndStatus(String type,boolean stt);
	public List<ProductEntity> findByPriceLessThanAndStatus(BigDecimal price,boolean stt);
	public List<ProductEntity> findByPriceBetweenAndStatus(BigDecimal startPrice,BigDecimal endPrice,boolean stt);
	@Query(value = "SELECT * FROM tbl_products WHERE created_date >= :startDate AND created_date <= :endDate", nativeQuery = true)
	List<ProductEntity> getAllBetweenDates(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);
}
