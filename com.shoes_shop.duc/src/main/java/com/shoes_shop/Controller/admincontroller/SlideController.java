package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SlideController {
	@RequestMapping (value = "/addSlide",method = RequestMethod.GET)
	public String addSlide(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/insert_slide";
	}
	@RequestMapping (value = "/viewSlide",method = RequestMethod.GET)
	public String viewSlide(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_slides";
	}
	@RequestMapping (value = "/repairSlide",method = RequestMethod.GET)
	public String repairSlide(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_slides";
	}
	@RequestMapping (value = "/deleteSlide",method = RequestMethod.GET)
	public String deleteSlide(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_slides";
	}
}
