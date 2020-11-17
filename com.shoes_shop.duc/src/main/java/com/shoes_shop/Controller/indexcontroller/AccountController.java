package com.shoes_shop.Controller.indexcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController extends BaseController{
	@RequestMapping (value = "/account" , method = RequestMethod.GET)
	public String accountIndex(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("form", "/WEB-INF/views/front-end/common/userLogin.jsp")	;
		return "front-end/account";
	}
	@RequestMapping (value = "/accountRegister" , method = RequestMethod.GET)
	public String accountSingInIndex(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("form", "/WEB-INF/views/front-end/common/accountRegister.jsp")	;
		return "front-end/account";
	}
	@RequestMapping (value = "/forgetPassword" , method = RequestMethod.GET)
	public String accountForgetPassword(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("form", "/WEB-INF/views/front-end/common/forgetPassword.jsp")	;
		return "front-end/account";
	}
}
