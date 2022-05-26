package com.shoes_shop.repositories;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.TotalInCate;

public interface ProductFilterRepo extends PagingAndSortingRepository<ProductEntity, Integer>{
	@Query("SELECT p FROM ProductEntity p WHERE CONCAT(p.title, ' ', p.price, ' ', p.shortDes, ' ', p.producttype) LIKE %?1% and Status = ?2")
	public Page<ProductEntity> search(String keyword,boolean stt,Pageable page);
	@Query("SELECT p FROM ProductEntity p WHERE p.category.id = ?1 and p.status = ?2")
	public Page<ProductEntity> search(int idCate,boolean stt,Pageable page);
//	@Query("SELECT sum(p.total) as total, c.name as category FROM tbl_saleorder as p, tbl_saleorder_products as s, tbl_products as pr, tbl_category as c where p.id = s.saleorder_id and s.product_id = pr.id and pr.category_id = c.id")
//	public List<TotalInCate> getTotalInCateByDate();
}
