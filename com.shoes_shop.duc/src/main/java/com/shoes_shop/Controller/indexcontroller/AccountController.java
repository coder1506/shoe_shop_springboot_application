package com.shoes_shop.Controller.indexcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.entities.User;
import com.shoes_shop.repositories.UserRepo;
import com.shoes_shop.serivce.UserService;

@Controller
public class AccountController extends BaseController{
	@Autowired
	UserService userService;
	@RequestMapping (value = "/userlogin" , method = RequestMethod.GET)
	public String accountIndex(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("user", new User());
		return "front-end/userlogin";
	}
	@RequestMapping (value = "/account" , method = RequestMethod.POST)
	public String accountAccess(@ModelAttribute("user") User user,final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("form", "/WEB-INF/views/front-end/common/userLogin.jsp");
		return "front-end/account";
	}
	@RequestMapping (value = "/accountRegister" , method = RequestMethod.GET)
	public String accountSingInIndex(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("user", new User());
		return "front-end/accountRegister";
	}
	@RequestMapping (value = "/accountRegister" , method = RequestMethod.POST)
	public String userAccess(@ModelAttribute("user") User user,final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		if(userService.save(user) == 1) {
			model.addAttribute("error_message", "Tên tài khoản của bạn đã tồn tại");
			return "front-end/accountRegister";
		}
		else if(userService.save(user) == 2) {
			model.addAttribute("error_message", "Email của bạn đã được sử dụng");
			return "front-end/accountRegister";
		}
		else {model.addAttribute("error_message", "Đăng kí thành công");
		return "front-end/home";}
	}
	@RequestMapping (value = "/forgetPassword" , method = RequestMethod.GET)
	public String accountForgetPassword(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		return "front-end/forgetPassword";
	}
}
