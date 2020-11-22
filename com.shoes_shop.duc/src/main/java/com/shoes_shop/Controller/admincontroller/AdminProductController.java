package com.shoes_shop.Controller.admincontroller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoes_shop.Controller.indexcontroller.BaseController;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.serivce.ProductService;

@Controller
public class AdminProductController extends BaseController{
	@Autowired
	ProductService productservice;
	@Autowired
	ProductRepo productRepo;
	@RequestMapping (value = "/admin/product/addproduct",method = RequestMethod.GET)
	public String addProductView(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("product", new ProductEntity());
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/product/addproduct",method = RequestMethod.POST)
	public String addProductSave(@RequestParam("product_images") MultipartFile[] productImages,
			final ModelMap model,final HttpServletRequest request,final HttpServletResponse response 
			,@ModelAttribute("product") ProductEntity product) throws IllegalStateException, IOException {
		productservice.save(productImages, product);
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/product/repairproduct/{id}",method = RequestMethod.GET)
	public String repairProduct(@PathVariable("id") Integer id,
			final ModelMap model,final HttpServletRequest request,final HttpServletResponse response 
			) throws IOException {
		ProductEntity prd = productRepo.getOne(id);
		model.addAttribute("product", prd);
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/product",method = RequestMethod.GET)
	public String viewProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("products", productRepo.findAll());
		return "admin/view_product";
	}
	@RequestMapping (value = "/admin/product/deleteproduct",method = RequestMethod.GET)
	public String deleteProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
}
