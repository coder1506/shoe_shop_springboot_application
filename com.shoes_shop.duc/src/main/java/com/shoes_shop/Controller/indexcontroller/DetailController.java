package com.shoes_shop.Controller.indexcontroller;


import java.util.ArrayList;
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
import com.shoes_shop.entities.ProductImages;
import com.shoes_shop.repositories.ProductRepo;

@Controller
public class DetailController extends BaseController{
	@Autowired
	ProductRepo productRepo;
	@RequestMapping (value = "/products/{productseo}", method = RequestMethod.GET)
	public String index(@PathVariable("productseo") String productSeo,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		// get data product 
		ProductEntity prd = productRepo.findBySeo(productSeo);
		model.addAttribute("product", prd);
		// get closer product 
		List<ProductEntity> products = new ArrayList<ProductEntity>();
		for(ProductEntity p : productRepo.findAll()) {
			if(p.getId() != prd.getId() && p.getCategory().getId() == prd.getCategory().getId() && p.getStatus() == true) 
				products.add(p);
		}
		model.addAttribute("products", products);
		return "front-end/chitiet";
	}
}
