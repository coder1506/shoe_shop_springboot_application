package com.shoes_shop.Controller.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.entities.CategoryEntity;
import com.shoes_shop.model.AjaxResponse;
import com.shoes_shop.model.Product;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.serivce.CategoryService;

@Controller
public class AdminCategoryController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	CategoryRepo categoryRepo;
	@RequestMapping (value = "/admin/addcategory",method = RequestMethod.POST)
	public String addCategory(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response,
			 @ModelAttribute("category") CategoryEntity cat) {
		categoryService.save(cat);
		return "admin/insert_p_category";
	}
	@RequestMapping (value = "/admin/addcategory",method = RequestMethod.GET)
	public String addCategoryView(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response) {
		model.addAttribute("danhmuc", "Thêm danh mục");
		model.addAttribute("category", new CategoryEntity());
		return "admin/insert_p_category";
	}
	@RequestMapping (value = "/admin/viewcategory",method = RequestMethod.GET)
	public String viewCategory(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("category", new CategoryEntity());
		model.addAttribute("categories", categoryRepo.findByStatus(true));
		return "admin/view_p_category";
	}
	@RequestMapping (value = "/admin/repaircategory/{id}",method = RequestMethod.GET)
	public String repairCategoryView(@PathVariable("id") Integer id,final ModelMap model,final HttpServletRequest request,final HttpServletResponse response ) {
		model.addAttribute("danhmuc", "Sửa danh mục");
		model.addAttribute("category", categoryRepo.findById(id));
		return "admin/insert_p_category";
	}
	@RequestMapping (value = "/admin/repaircategory",method = RequestMethod.POST)
	public String repairCategorySave(final ModelMap model,final HttpServletRequest request,final HttpServletResponse response,
			@ModelAttribute("category") CategoryEntity cate ) {
		categoryService.save(cate);
		model.addAttribute("category", new CategoryEntity());
		return "admin/view_p_category";
	}
	@RequestMapping(value = {"/admin/deletecategory"}, method = RequestMethod.DELETE)
	public ResponseEntity<AjaxResponse> deleteCategoryWithAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody Product prd)
	throws Exception {
		CategoryEntity cate = categoryRepo.getOne(prd.getId());
		cate.setStatus(false);
		categoryRepo.save(cate);
		return ResponseEntity.ok(new AjaxResponse(200,"Xoá thành công"));
 }
}
