package com.shoes_shop.serivce;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoes_shop.entities.CategoryEntity;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.model.ChartsResponse;
import com.shoes_shop.model.Dataset;
import com.shoes_shop.model.TotalInCate;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.ProductRepo;

@Service
public class ChartsService {
	@Autowired
	CategoryRepo categoryRepo;
	@Autowired
	ProductService productservice;

	public ChartsResponse getDummyData1(){
		ChartsResponse chartsResponse = new ChartsResponse();
		chartsResponse.setAppName("Thống kê doanh thu kể từ đầu tháng tới bây giờ so sánh với cùng thời điểm năm trước");
		
		List<CategoryEntity> cates = categoryRepo.findByStatusAndCategorytype(true, "sản phẩm");
		List<String> lables = new ArrayList<>();
		LocalDateTime now = LocalDateTime.now();
		LocalDateTime firstDayOfMonth = now.with(TemporalAdjusters.firstDayOfMonth());
		List<TotalInCate> totalInCates = productservice.getTotalInCateByDate(firstDayOfMonth.minusYears(1), now.minusYears(1) , cates);
		for(int i = 0; i < cates.size(); i++) {
			lables.add(cates.get(i).getName());
		}
		chartsResponse.setLables(lables);
		
		List<Dataset> datasets = new ArrayList<>();
		Dataset dataset = new Dataset();
		List<BigDecimal> value = new ArrayList<>();	
		int k = 0;
		for(int i = 0; i < lables.size(); i++) {
			for(int j = 0; j < totalInCates.size(); j++) {
				if(lables.get(i).equals(totalInCates.get(j).getCategory())) {
					value.add(totalInCates.get(j).getTotal());
				}
			}
		}
		dataset.setName("My First dataset");				
		dataset.setValue(value);
		datasets.add(dataset);
		List<TotalInCate> totalInCates1 = productservice.getTotalInCateByDate(firstDayOfMonth, now, cates);
		dataset = new Dataset();
		value = new ArrayList<>();
		for(int i = 0; i < lables.size(); i++) {
			for(int j = 0; j < totalInCates1.size(); j++) {
				if(lables.get(i).equals(totalInCates1.get(j).getCategory())) {
					value.add(totalInCates1.get(j).getTotal());
				}
			}
		}
		dataset.setName("My Second dataset");		
		dataset.setValue(value);
		datasets.add(dataset);
		
		chartsResponse.setDatasets(datasets);
		
		return chartsResponse;
	}

}
