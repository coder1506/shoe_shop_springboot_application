package com.shoes_shop.serivce;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.github.slugify.Slugify;
import com.shoes_shop.entities.CategoryEntity;
import com.shoes_shop.entities.User;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.UserRepo;

@Service
public class UserService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private UserRepo userRepo;
	
	public int save(User user) {
			if(userRepo.findByUsername(user.getUsername()) != null) {
				return 1;
			}
			else if(userRepo.findByEmail(user.getEmail()) != null) 
			{
				return 2;
			}
			else {
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(8);
				user.setPassword(encoder.encode(user.getPassword()));
				userRepo.save(user);
				return 0;
				}
	}
}
