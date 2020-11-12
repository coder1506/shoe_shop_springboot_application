package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TypeProduct {
	@RequestMapping (value = "/addTypeProduct",method = RequestMethod.GET)
	public String addTypeProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/insert_category";
	}
	@RequestMapping (value = "/viewTypeProduct",method = RequestMethod.GET)
	public String viewTypeProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_category";
	}
	@RequestMapping (value = "/repairTypeProduct",method = RequestMethod.GET)
	public String repairTypeProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_category";
	}
	@RequestMapping (value = "/deleteTypeProduct",method = RequestMethod.GET)
	public String deleteTypeProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_category";
	}
}
