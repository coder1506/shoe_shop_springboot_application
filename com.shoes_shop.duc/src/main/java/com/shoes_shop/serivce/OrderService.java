package com.shoes_shop.serivce;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes_shop.entities.SaleOrder;
import com.shoes_shop.model.Cart;
import com.shoes_shop.repositories.OrderRepo;


@Service
public class OrderService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private OrderRepo orderRepo;
	public void saveOrder(Cart cart,SaleOrder order,int id) {
		LocalDateTime now = LocalDateTime.now();  
	    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
	    String formatDateTime = now.format(format); 
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		order.setCreatedDate(LocalDateTime.parse(formatDateTime, formatter));
		order.setUser_id(id);
		order.setTotal(cart.getSumPrice());
		order.setCode("sp"+id);
		orderRepo.save(order);
	}
}
