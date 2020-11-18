package com.shoes_shop.serivce;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.repositories.ProductRepo;

@Service
public class ProductService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private ProductRepo productRepo;
	
	public void save(MultipartFile[] productImages, ProductEntity product) {
		productRepo.save(product);
	}
}
