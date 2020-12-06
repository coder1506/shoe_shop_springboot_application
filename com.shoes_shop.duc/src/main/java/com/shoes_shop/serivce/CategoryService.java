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
				LocalDateTime now = LocalDateTime.now();  
			    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
			    String formatDateTime = now.format(format); 
			    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
			    category.setUpdatedDate(LocalDateTime.parse(formatDateTime, formatter));
			}
			else 
				category.setUpdatedDate(oldCategory.getUpdatedDate());
				category.setCreatedDate(oldCategory.getCreatedDate());
		}
		else {
			LocalDateTime now = LocalDateTime.now();  
		    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
		    String formatDateTime = now.format(format); 
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		    category.setCreatedDate(LocalDateTime.parse(formatDateTime, formatter));
		}
		Slugify slg = new Slugify();
		category.setSeo(slg.slugify(category.getName() +""+System.currentTimeMillis()));
		categoryRepo.save(category);
	}
}
