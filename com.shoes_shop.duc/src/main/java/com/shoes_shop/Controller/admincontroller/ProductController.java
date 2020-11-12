package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	@RequestMapping (value = "/addProduct",method = RequestMethod.GET)
	public String addProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/insert_product";
	}
	@RequestMapping (value = "/viewProduct",method = RequestMethod.GET)
	public String viewProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
	@RequestMapping (value = "/repairProduct",method = RequestMethod.GET)
	public String repairProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
	@RequestMapping (value = "/deleteProduct",method = RequestMethod.GET)
	public String deleteProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
}
