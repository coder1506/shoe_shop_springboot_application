package com.shoes_shop.Controller.indexcontroller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.model.AjaxResponse;
import com.shoes_shop.model.Subcriber;

@Controller
public class HomeController {
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/home";
	}
	@RequestMapping(value = {"/save-contact-with-ajax"}, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody Subcriber data)
	throws Exception {
		String m = data.getEmail();
		System.out.print(m);
		return ResponseEntity.ok(new AjaxResponse(200,"Thành công"));
 }
}
