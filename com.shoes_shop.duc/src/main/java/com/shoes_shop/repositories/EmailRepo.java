package com.shoes_shop.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.shoes_shop.entities.EmailEntity;
@Repository
public interface EmailRepo extends JpaRepository<EmailEntity,Integer>{
	public EmailEntity findByEmail(String email);
}
