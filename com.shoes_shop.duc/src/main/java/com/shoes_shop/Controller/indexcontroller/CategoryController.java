package com.shoes_shop.Controller.indexcontroller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.serivce.ProductService;

@Controller
public class CategoryController extends BaseController{
	@Autowired 
	ProductService productService;
	@Autowired
	CategoryRepo categoryRepo;
	@Autowired
	ProductRepo productRepo;
	@RequestMapping (value = "/shoes-shop/{seoOfCategory}", method = RequestMethod.GET)
	public String indexFindByCategory(@PathVariable("seoOfCategory") String seoOfCategory,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductSearching productSearch = new ProductSearching();
		productSearch.setSeoCategory(seoOfCategory);;
		List<ProductEntity> productList = productService.search(productSearch);
		model.addAttribute("products", productList);
		model.addAttribute("categoryname", categoryRepo.findBySeo(seoOfCategory));
		return "front-end/danhmuc";
	}
	@RequestMapping (value = "/product-all", method = RequestMethod.GET)
	public String indexProductAll(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<ProductEntity> productList = productRepo.findAll();
		model.addAttribute("products", productList);
		return "front-end/danhmuc";
	}
	@RequestMapping (value = "/accessory-all", method = RequestMethod.GET)
	public String indexAccessoryAll(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<ProductEntity> productList = productRepo.findAll();
		model.addAttribute("products", productList);
		return "front-end/danhmuc";
	}
}
