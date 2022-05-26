package com.shoes_shop.Controller.admincontroller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes_shop.model.ChartsResponse;
import com.shoes_shop.serivce.ChartsService;

@Controller
public class ChartController {


	@Autowired
	ChartsService chartService;
	
	@RequestMapping("admin/getChartData")
	public ResponseEntity<List<ChartsResponse>> getChartData(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response){
		List<ChartsResponse> chartsResponse = new ArrayList<>();
		chartsResponse.add(chartService.getDummyData1());
		return ResponseEntity.ok(chartsResponse);
	}
	@RequestMapping("admin/chart")
	public String viewChart(){
		return "admin/view_chart";
	}
}