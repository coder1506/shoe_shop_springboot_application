package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryControllerAdmin {
	@RequestMapping (value = "/addCategory",method = RequestMethod.GET)
	public String addCategory(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/insert_p_category";
	}
	@RequestMapping (value = "/viewCategory",method = RequestMethod.GET)
	public String viewCategory(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_p_category";
	}
	@RequestMapping (value = "/repairCategory",method = RequestMethod.GET)
	public String repairCategory(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_p_category";
	}
	@RequestMapping (value = "/deleteCategory",method = RequestMethod.GET)
	public String deleteCategory(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_p_category";
	}
}
