package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminLoginController {
	@RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
	public String adminIndexLogin(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "admin/login";			
	}
}

