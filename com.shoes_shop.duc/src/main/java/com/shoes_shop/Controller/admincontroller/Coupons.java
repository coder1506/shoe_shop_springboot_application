package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Coupons {
	@RequestMapping (value = "/addCoupons",method = RequestMethod.GET)
	public String addCoupons(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/insert_coupon";
	}
	@RequestMapping (value = "/viewCoupons",method = RequestMethod.GET)
	public String viewCoupons(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_coupons";
	}
	@RequestMapping (value = "/repairCoupons",method = RequestMethod.GET)
	public String repairCoupons(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_coupons";
	}
	@RequestMapping (value = "/deleteCoupons",method = RequestMethod.GET)
	public String deleteCoupons(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_coupons";
	}
}
