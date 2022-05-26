package com.shoes_shop.repositories;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.shoes_shop.entities.SaleOrder;

@Repository
public interface SaleORepo extends JpaRepository<SaleOrder,Integer>{
	@Query(value = "SELECT * FROM tbl_saleorder WHERE created_date >= :startDate AND created_date <= :endDate AND pay = :pay", nativeQuery = true)
	List<SaleOrder> getAllBetweenDatesAndPay(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate, @Param("pay") boolean pay);
}
