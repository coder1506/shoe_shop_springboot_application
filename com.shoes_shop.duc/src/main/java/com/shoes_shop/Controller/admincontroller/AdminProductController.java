package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.serivce.ProductService;

@Controller
public class AdminProductController {
	@Autowired
	ProductService productservice;
	@RequestMapping (value = "/admin/addproduct",method = RequestMethod.GET)
	public String addProductView(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/addproduct",method = RequestMethod.POST)
	public String addProductSave(@RequestParam("product") MultipartFile[] productImages,
			final ModelMap model,final HttpServletRequest request,final HttpServletResponse response 
			,@ModelAttribute("product") ProductEntity product) {
		productservice.save(productImages, product);
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/viewproduct",method = RequestMethod.GET)
	public String viewProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
	@RequestMapping (value = "/admin/repairproduct",method = RequestMethod.GET)
	public String repairProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
	@RequestMapping (value = "/admin/deleteproduct",method = RequestMethod.GET)
	public String deleteProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
}
