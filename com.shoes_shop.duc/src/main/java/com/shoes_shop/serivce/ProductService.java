package com.shoes_shop.serivce;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.entities.ProductImages;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.repositories.ProductRepo;

@Service
public class ProductService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private ProductRepo productRepo;
	
	public boolean isEmptyUploadFile(MultipartFile[] images) {
		if(images == null || images.length <= 0 ) return true;
		if(images.length == 0 || images[0].getOriginalFilename().isEmpty() == true) return true;
		return false;
	}
	
	public void save(MultipartFile[] productImages, ProductEntity product) throws IllegalStateException, IOException {
		if(product.getId() != null) {//Case that product had
			ProductEntity oldProduct = productRepo.findById(product.getId()).get();// get data from target product
			if(!isEmptyUploadFile(productImages)) {// if admin uploads images
				//take old image list
				List<ProductImages> imageList = oldProduct.getProductImages();
				//delete images of this product on host
				for(ProductImages prdImage : imageList) {
					new File("C:\\Users\\Duc\\Desktop\\shoe_shop_springboot_application\\com.shoes_shop.duc\\src\\main\\resources\\META-INF\\images\\product\\"+prdImage.getPath()).delete();
				}
				//delete images of this product on database
				product.removeProductImages();
				
			}
			else {
				product.setProductImages(oldProduct.getProductImages());
			}
		}
		if(!isEmptyUploadFile(productImages)) {
			for(MultipartFile productImg : productImages) {
				productImg.transferTo(new File("C:\\Users\\Duc\\Desktop\\shoe_shop_springboot_application\\com.shoes_shop.duc\\src\\main\\resources\\META-INF\\images\\product\\" + productImg.getOriginalFilename()));
				ProductImages _productImg = new ProductImages();
				_productImg.setPath(productImg.getOriginalFilename());
				_productImg.setTitle(productImg.getOriginalFilename());
				product.addProductImages(_productImg);
			}
		}
		productRepo.save(product);
	}
	public List<ProductEntity> search(final ProductSearching productSearching){
		String sql = "select * from tbl_products where 1=1 and status = 1";
		
		if(productSearching.getCategoryId() != null && productSearching != null) {
			sql+= " and category_id = "+ productSearching.getCategoryId();
		}
		if(productSearching.getId() != null && productSearching != null) {
			sql+= " and id = "+ productSearching.getId();
		}
		Query query = entityManager.createNativeQuery(sql, ProductEntity.class);
		
		return query.getResultList();
	}
}
