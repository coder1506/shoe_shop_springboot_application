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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.Contants;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.ProductFilter;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.serivce.ProductService;

@Controller
public class CategoryController extends BaseController implements Contants{
	@Autowired 
	ProductService productService;
	@Autowired
	CategoryRepo categoryRepo;
	@Autowired
	ProductRepo productRepo;
	@RequestMapping (value = "/shoes-shop/{seoOfCategory}", method = RequestMethod.GET)
	public String indexFindByCategory(@PathVariable("seoOfCategory") String seoOfCategory,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		HttpSession ss = request.getSession();
		ss.setAttribute(CURRENTCATEGORYSEO, seoOfCategory);
		ProductSearching productSearch = new ProductSearching();
		productSearch.setSeoCategory(seoOfCategory);
//		productSearch.setCurrentPage(Integer.parseInt(request.getParameter("page")));
		List<ProductEntity> productList = productService.search(productSearch);
		model.addAttribute("products", productList);
		model.addAttribute("status", "Trang chủ / danh mục / " + categoryRepo.findBySeo(seoOfCategory).getName());
		model.addAttribute("categoryname", categoryRepo.findBySeo(seoOfCategory).getName());
		return "front-end/danhmuc";
	}
	@RequestMapping (value = "/product-all", method = RequestMethod.GET)
	public String indexProductAll(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		HttpSession ss = request.getSession();
		ss.setAttribute(CURRENTCATEGORYSEO, "product-all");
		model.addAttribute("categoryname", "Tất cả sản phẩm");
		List<ProductEntity> productList = productRepo.findByStatus(true);
		model.addAttribute("products", productList);
		model.addAttribute("status", "Trang chủ / danh mục / Tất cả sản phẩm");
		return "front-end/danhmuc";
	}
	@RequestMapping (value = "/accessory-all", method = RequestMethod.GET)
	public String indexAccessoryAll(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		HttpSession ss = request.getSession();
		ss.setAttribute(CURRENTCATEGORYSEO, "accessory-all");
		model.addAttribute("categoryname", "Tất cả phụ kiện");
		List<ProductEntity> productList = productRepo.findByStatus(true);
		model.addAttribute("products", productList);
		model.addAttribute("status", "Trang chủ / danh mục / Tất cả phụ kiện");
		return "front-end/danhmuc";
	}
	@RequestMapping (value = "/productlabel/{label}", method = RequestMethod.GET)
	public String FindProductByLabels(@PathVariable("label") String label,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<ProductEntity> productList = productRepo.findByProducttypeAndStatus(label,true);
		if(label.equals("san-pham-moi-nhat")) {
		model.addAttribute("categoryname", "Sản phẩm mới nhất");
		model.addAttribute("status", "Trang chủ / danh mục / Sản phẩm mới nhất");}
		else if(label.equals("san-pham-noi-bat")) {
			model.addAttribute("categoryname", "Sản phẩm nổi bật");
		model.addAttribute("status", "Trang chủ / danh mục / Sản phẩm nổi bật");}
		else 
			model.addAttribute("categoryname", "Sản phẩm giảm giá");
		model.addAttribute("status", "Trang chủ / danh mục / Sản phẩm giảm giá");
		model.addAttribute("products", productList);
		return "front-end/danhmuc";
	}
}
