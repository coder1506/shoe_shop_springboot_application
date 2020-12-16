package com.shoes_shop.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.shoes_shop.entities.SaleOrder;


public interface OrderRepo extends JpaRepository<SaleOrder,Integer>{
	public List<SaleOrder> findByStatus(boolean stt);
	public SaleOrder findByStatusAndCustomerEmail(boolean stt,String email);
}
