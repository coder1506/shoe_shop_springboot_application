package com.shoes_shop.Controller.admincontroller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.repositories.OrderRepo;

@Controller
public class AdminCustomerController {
	@Autowired
	OrderRepo orderRepo;
	@RequestMapping (value = "/admin/viewcustomers",method = RequestMethod.GET)
	public String customers(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("customers", orderRepo.findAll());
		return "admin/view_customers";
	}
}
