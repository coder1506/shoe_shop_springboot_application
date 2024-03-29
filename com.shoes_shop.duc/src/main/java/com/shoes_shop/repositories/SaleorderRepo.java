package com.shoes_shop.repositories;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.entities.SaleOrder;
import com.shoes_shop.entities.SaleOrderProducts;
import com.shoes_shop.entities.SaleProductEntity;

@Repository
public interface SaleorderRepo extends JpaRepository<SaleOrderProducts,Integer>{
}
