package com.shoes_shop.Controller.admincontroller;

import java.io.IOException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoes_shop.Controller.indexcontroller.BaseController;
import com.shoes_shop.entities.EmailEntity;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.AjaxResponse;
import com.shoes_shop.model.Product;
import com.shoes_shop.repositories.EmailRepo;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.serivce.ProductService;

@Controller
public class AdminProductController extends BaseController{
	@Autowired
	ProductService productservice;
	@Autowired
	ProductRepo productRepo;
	@RequestMapping (value = "/admin/addproduct",method = RequestMethod.GET)
	public String addProductView(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("product", new ProductEntity());
		model.addAttribute("title", "thêm sản phẩm");
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/addproduct",method = RequestMethod.POST)
	public String addProductSave(@RequestParam("product_images") MultipartFile[] productImages,
			final ModelMap model,final HttpServletRequest request,final HttpServletResponse response 
			,@ModelAttribute("product") ProductEntity product) throws IllegalStateException, IOException {
		model.addAttribute("product", new ProductEntity());	
		productservice.save(productImages, product);
		// send a notification
		try {
			productservice.sendNoti(product);
			}catch( Exception e ){
			new Exception("cannot send email");
		}
		return "redirect:/admin/product";
	}
	@RequestMapping (value = "/admin/repairproduct/{id}",method = RequestMethod.GET)
	public String repairProduct(@PathVariable("id") Integer id,
			final ModelMap model,final HttpServletRequest request,final HttpServletResponse response 
			) throws IOException {
		ProductEntity prd = productRepo.getOne(id);
		model.addAttribute("product", prd);
		model.addAttribute("title", "Sửa sản phẩm");
		return "admin/insert_product";
	}
	@RequestMapping (value = "/admin/productlist",method = RequestMethod.GET)
	public String returnProductList(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("products", productRepo.findByStatus(true));
//		if(request.getParameter("repair") != null) {
//		if(request.getParameter("repair").equalsIgnoreCase("success"))
//			model.addAttribute("message", "<script>$(document).ready(function(){alert('Sửa thành công')})</script>");}
//		else if(request.getParameter("add").equalsIgnoreCase("success"))
//			model.addAttribute("message", "$<script>(document).ready(function(){alert('Thêm thành công')})</script>");
//		else model.addAttribute("message", " ");
		return "admin/view_product";
	}
	@RequestMapping (value = "/admin/product",method = RequestMethod.GET)
	public String viewProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("products", productRepo.findByStatus(true));
		return "admin/view_product";
	}
	@RequestMapping (value = "/admin/deleteproduct",method = RequestMethod.GET)
	public String deleteProduct(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		return "admin/view_product";
	}
	@RequestMapping(value = {"/admin/deleteproduct"}, method = RequestMethod.DELETE)
	public ResponseEntity<AjaxResponse> deleteWithAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody Product data)
	throws Exception {
		ProductEntity prd = productRepo.getOne(data.getId());
		prd.setStatus(false);
		productRepo.save(prd);
		return ResponseEntity.ok(new AjaxResponse(200,"Xoá thành công"));
 }
}
