package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.ProductRepo;

@Controller
public class AdminDashboardController {
	@Autowired
	ProductRepo productRepo;
	@Autowired
	CategoryRepo categoryRepo;
	@RequestMapping (value = "/admin/dashboard",method = RequestMethod.GET)
	public String Dashboard(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("products", productRepo.findByStatus(true));
		model.addAttribute("categories", categoryRepo.findByStatus(true));
		return "admin/index";
	}
}
