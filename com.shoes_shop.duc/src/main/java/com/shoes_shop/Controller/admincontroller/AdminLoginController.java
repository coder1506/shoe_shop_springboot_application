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
	public String adminIndex(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "admin/login";
	}
	@RequestMapping(value = {"/admin"}, method = RequestMethod.POST)
	public String adminIndexLogin(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("123"))
			{
				model.addAttribute("usernameAdmin", request.getParameter("username"));
				return "admin/index";
			}
		else {
			model.addAttribute("errorMessageLogin", "Tài khoản hoặc mật khẩu của bạn không chính xác");
			return "admin/login";			}
	}
}
