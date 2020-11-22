package com.shoes_shop.Controller.indexcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.repositories.ProductRepo;

@Controller
public class DetailController extends BaseController{
	@Autowired
	ProductRepo productRepo;
	@RequestMapping (value = "/product/detail/{id}", method = RequestMethod.GET)
	public String index(@PathVariable("id") Integer id,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductEntity prd = productRepo.getOne(id);
		model.addAttribute("product", prd);
		return "front-end/chitiet";
	}
}
