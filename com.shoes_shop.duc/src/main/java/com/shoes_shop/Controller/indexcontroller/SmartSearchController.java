package com.shoes_shop.Controller.indexcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.repositories.ProductRepo;

@Controller
public class SmartSearchController extends BaseController{
	@Autowired
	ProductRepo productRepo;
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String resultSearch(final HttpServletRequest request,final HttpServletResponse response,final ModelMap model) {
		String key = request.getParameter("key");
		List<ProductEntity> resultSearching = productRepo.search(key,true);
		model.addAttribute("resultSearching", resultSearching);
		return "front-end/searchingIndex";
	}
	@RequestMapping(value = "/autocomplete", method = RequestMethod.GET)
	public List<ProductEntity> resultSearchAutoComplete(final HttpServletRequest request,final HttpServletResponse response,final ModelMap model) {
		return productRepo.findByStatus(true);
	}
}
