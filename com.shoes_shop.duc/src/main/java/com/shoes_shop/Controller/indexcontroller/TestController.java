package com.shoes_shop.Controller.indexcontroller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.Contants;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.AjaxResponse;
import com.shoes_shop.model.ProductFilter;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.model.Subcriber;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.serivce.ProductService;

@Controller
public class TestController extends BaseController implements Contants{
	@Autowired 
	ProductService productService;
	@Autowired
	CategoryRepo categoryRepo;
	@Autowired
	ProductRepo productRepo;
	@RequestMapping(value = {"/products"}, method = RequestMethod.GET)
	public ResponseEntity<List<ProductFilter>> test(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception {
		List<ProductFilter> prdList = new ArrayList<ProductFilter>();
		ProductSearching prds = new ProductSearching();
		if(request.getParameter("cate") != null) prds.setSeoCategory(request.getParameter("cate"));
		for(ProductEntity prd : productService.search(prds)) {
			prdList.add(new ProductFilter(prd.getId(),prd.getTitle(),prd.getAvatar(),prd.getPrice()
					,prd.getPrice_sale(),prd.getSize(),prd.getSeo(),prd.getCategory().getId()));
		}
		return ResponseEntity.ok(prdList);
 }
	@RequestMapping (value = "/test/{seoOfCategory}", method = RequestMethod.GET)
	public String testPage(@PathVariable("seoOfCategory") String seoOfCategory,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		HttpSession ss = request.getSession();
		ss.setAttribute(CURRENTCATEGORYSEO, seoOfCategory);
		model.addAttribute("status", "Trang chủ / danh mục / " + categoryRepo.findBySeo(seoOfCategory).getName());
		model.addAttribute("categoryname", categoryRepo.findBySeo(seoOfCategory).getName());
		return "front-end/test";
	}
}
