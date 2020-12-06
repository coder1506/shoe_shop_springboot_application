package com.shoes_shop.repositories;


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
}
