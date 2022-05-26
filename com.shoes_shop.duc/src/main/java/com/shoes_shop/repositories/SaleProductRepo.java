package com.shoes_shop.repositories;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.shoes_shop.entities.SaleProductEntity;

public interface SaleProductRepo extends JpaRepository<SaleProductEntity,Integer>{
	@Query(value = "SELECT * FROM tbl_saleorder_products WHERE created_date >= :startDate AND created_date <= :endDate", nativeQuery = true)
	List<SaleProductEntity> getAllBetweenDates(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);
}

