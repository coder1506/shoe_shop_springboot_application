package com.shoes_shop.serivce;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.slugify.Slugify;
import com.shoes_shop.entities.CategoryEntity;
import com.shoes_shop.repositories.CategoryRepo;

@Service
public class CategoryService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private CategoryRepo categoryRepo;
	
	public void save(CategoryEntity category) {
		if(category.getId() != null) {
			CategoryEntity oldCategory = categoryRepo.findById(category.getId()).get();
			if(categoryRepo.findById(category.getId()).get().isDifferent(category))
			{
			    category.setUpdatedDate(LocalDateTime.now());
			}
			else 
				category.setUpdatedDate(oldCategory.getUpdatedDate());
				category.setCreatedDate(oldCategory.getCreatedDate());
		}
		else {
		    category.setCreatedDate(LocalDateTime.now());
		}
		Slugify slg = new Slugify();
		category.setSeo(slg.slugify(category.getName() +""+System.currentTimeMillis()));
		categoryRepo.save(category);
	}
}
