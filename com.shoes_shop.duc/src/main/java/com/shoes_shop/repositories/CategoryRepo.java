package com.shoes_shop.repositories;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.shoes_shop.entities.CategoryEntity;
@Repository
public interface CategoryRepo extends JpaRepository<CategoryEntity,Integer>{
	public CategoryEntity findBySeoAndStatus(String seo,boolean stt);
	public List<CategoryEntity> findByStatus(boolean stt);
	public List<CategoryEntity> findByStatusAndCategorytype(boolean stt, String categeoryType);
	@Query(value = "SELECT * FROM tbl_category WHERE created_date >= :startDate AND created_date <= :endDate", nativeQuery = true)
	List<CategoryEntity> getAllBetweenDates(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);
}
