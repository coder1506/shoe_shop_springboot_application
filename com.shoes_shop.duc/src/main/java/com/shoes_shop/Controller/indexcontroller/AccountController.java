package com.shoes_shop.Controller.indexcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.entities.SaleOrder;
import com.shoes_shop.entities.User;
import com.shoes_shop.model.Cart;
import com.shoes_shop.model.UserDetail;
import com.shoes_shop.repositories.UserRepo;
import com.shoes_shop.serivce.OrderService;
import com.shoes_shop.serivce.UserService;

@Controller
public class AccountController extends BaseController{
	@Autowired
	UserService userService;
	@Autowired
	UserRepo userRepo;
	@Autowired
	OrderService orderSerivce;
	@RequestMapping (value = "/user" , method = RequestMethod.GET)
	public String accountIndex(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		return "front-end/userlogin";
	}
	@RequestMapping (value = "/user/checkout" , method = RequestMethod.GET)
	public String userAccess(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("order", new SaleOrder());
		return "front-end/checkout";
	}
	@RequestMapping (value = "/user/info" , method = RequestMethod.GET)
	public String userInfor(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("order", new SaleOrder());
		return "front-end/userinfor";
	}
	@RequestMapping (value = "/user/saveorder" , method = RequestMethod.POST)
	public String saveOrder(@ModelAttribute("order") SaleOrder order,final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		HttpSession ss = request.getSession();
		Cart cart = (Cart) ss.getAttribute("shop_cart");
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			int id = 0;
			if (principal instanceof UserDetails) {
				id  = ((User)principal).getId();
			}
		orderSerivce.saveOrder(cart, order,id);
		ss.removeAttribute("shop_cart");
		ss.removeAttribute("amount");
		return "front-end/home";
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
		else {
			model.addAttribute("error_message", "Đăng kí thành công");
			
			return "redirect:/";
		}
	}
	@RequestMapping (value = "/forgetPassword" , method = RequestMethod.GET)
	public String accountForgetPassword(final ModelMap model ,final HttpServletRequest request,final HttpServletResponse response ) {
		return "front-end/forgetPassword";
	}
}
