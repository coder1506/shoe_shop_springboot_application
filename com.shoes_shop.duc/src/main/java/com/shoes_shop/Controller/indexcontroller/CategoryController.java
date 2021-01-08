package com.shoes_shop.Controller.indexcontroller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.Contants;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.ProductDataForCate;
import com.shoes_shop.model.ProductFilter;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.ProductFilterRepo;
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
	@Autowired
	ProductFilterRepo productFilterRepo;
	@RequestMapping(value = {"/products"}, method = RequestMethod.GET)
	public ResponseEntity<ProductDataForCate> test(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception {
		List<ProductFilter> prdList = new ArrayList<ProductFilter>();
		String cate = request.getParameter("cate");
		Page<ProductEntity> prdListInDb = null;
		int page = Integer.parseInt(request.getParameter("page"));
		if(page > 0) page = page - 1;
		else if(page < 0) page = 0;
		if( cate!= null && categoryRepo.findBySeoAndStatus(cate,true) != null || cate.equals("product-all") || cate.equals("san-pham-moi-nhat") || cate.equals("san-pham-noi-bat") || cate.equals("san-pham-giam-gia") || cate.equals("accessory-all")) {
			ProductSearching prds = new ProductSearching();
			prds.setSeoCategory(cate);
			if(cate.equals("product-all")) prdListInDb =  productRepo.findByStatus(true,PageRequest.of(page, 9));
			else if(cate.equals("accessory-all")) prdListInDb = productRepo.findByProducttypeAndStatus(cate, true,PageRequest.of(page, 9));
			else if(cate.equals("san-pham-moi-nhat")) prdListInDb = productRepo.findByProducttypeAndStatus(cate, true,PageRequest.of(page, 9));
			else if(cate.equals("san-pham-noi-bat")) prdListInDb = productRepo.findByProducttypeAndStatus(cate, true,PageRequest.of(page, 9));
			else if(cate.equals("san-pham-giam-gia")) prdListInDb = productRepo.findByProducttypeAndStatus(cate, true,PageRequest.of(page, 9));
			else prdListInDb = productFilterRepo.search(categoryRepo.findBySeoAndStatus(cate,true).getId(), true, PageRequest.of(page, 9));
		}
		for(ProductEntity prd : prdListInDb) {
			prdList.add(new ProductFilter(prd.getId(),prd.getTitle(),prd.getAvatar(),prd.getPrice()
					,prd.getPrice_sale(),prd.getSize(),prd.getSeo(),prd.getCategory().getId(),prd.getColor(),prd.getProducttype()));
		}
		ProductDataForCate prdData = new ProductDataForCate();
		prdData.setPrdList(prdList);
		prdData.setNumberOfPage(prdListInDb.getTotalPages());
		return ResponseEntity.ok(prdData);
 }
	@RequestMapping (value = "/shoes-shop/{seoOfCategory}", method = RequestMethod.GET)
	public String testPage(@PathVariable("seoOfCategory") String seoOfCategory,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		HttpSession ss = request.getSession();
		ss.setAttribute(CURRENTCATEGORYSEO, seoOfCategory);
		if(seoOfCategory.equals("product-all")) {
			model.addAttribute("status", "Trang chủ / danh mục / Tất cả sản phẩm");
			model.addAttribute("categoryname", "Tất cả sản phẩm");
		}
		else if(seoOfCategory.equals("accessory-all")) {
			model.addAttribute("status", "Trang chủ / danh mục / Tất cả phụ kiện");
			model.addAttribute("categoryname", "Tất cả sản phẩm");
		}
		else if(seoOfCategory.equals("san-pham-moi-nhat")) {
			model.addAttribute("status", "Trang chủ / danh mục / Sản phẩm mới nhất");
			model.addAttribute("categoryname", "Sản phẩm mới nhất");
		}
		else if(seoOfCategory.equals("san-pham-noi-bat")) {
			model.addAttribute("status", "Trang chủ / danh mục / Sản phẩm nổi bật");
			model.addAttribute("categoryname", "Sản phẩm nổi bật");
		}
		else if(seoOfCategory.equals("san-pham-giam-gia")) {
			model.addAttribute("status", "Trang chủ / danh mục / Sản phẩm giảm giá");
			model.addAttribute("categoryname", "Sản phẩm giảm giá");
		}
		else {
			if(categoryRepo.findBySeoAndStatus(seoOfCategory,true) != null) {
			model.addAttribute("status", "Trang chủ / danh mục / " + categoryRepo.findBySeoAndStatus(seoOfCategory,true).getName());
			model.addAttribute("categoryname", categoryRepo.findBySeoAndStatus(seoOfCategory,true).getName());}}
		return "front-end/danhmuc";
	}
}
