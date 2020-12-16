package com.shoes_shop.serivce;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoes_shop.entities.SaleOrder;
import com.shoes_shop.model.Cart;
import com.shoes_shop.model.ProductCart;
import com.shoes_shop.repositories.OrderRepo;
import com.shoes_shop.repositories.UserRepo;


@Service
public class OrderService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private OrderRepo orderRepo;
	@Autowired
	private UserRepo userRepo;
	@Transactional 
	public void saveOrder(Cart cart,SaleOrder order,int id) {
		LocalDateTime now = LocalDateTime.now();  
	    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
	    String formatDateTime = now.format(format); 
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		order.setCreatedDate(LocalDateTime.parse(formatDateTime, formatter));
		order.setUser_id(id);
		order.setTotal(cart.getSumPrice());
		order.setCode("sp"+id);
		order.setCustomerEmail(userRepo.findById(id).get().getEmail());
		orderRepo.save(order);
		String sql = "INSERT INTO tbl_users_roles(saleorder_id,product_id,created_date,created_by) VALUES (?1,?2,?3,?4)";
		Query qr = entityManager.createNativeQuery(sql);
		for(ProductCart prC :  cart.getCart()) {
			qr.setParameter(1, orderRepo.findByStatusAndCustomerEmail(true, userRepo.findById(id).get().getEmail()).getId());
			qr.setParameter(2,prC.getProductCode());
			qr.setParameter(3,LocalDateTime.parse(formatDateTime, formatter));
			qr.setParameter(4,userRepo.findById(id).get().getUsername());
			qr.executeUpdate();
		}
	}
}
