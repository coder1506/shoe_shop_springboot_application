package com.shoes_shop.serivce;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.github.slugify.Slugify;
import com.shoes_shop.entities.EmailEntity;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.entities.ProductImages;
import com.shoes_shop.entities.SizeEntity;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.repositories.EmailRepo;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.repositories.SizeRepo;

@Service
public class ProductService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private ProductRepo productRepo;
	@Autowired
	public JavaMailSender emailSender;
	@Autowired
	EmailRepo emailRepo;
	@Autowired
	SizeRepo sizeRepo;
	public boolean isEmptyUploadFile(MultipartFile[] images) {
		if(images == null || images.length <= 0 ) return true;
		if(images.length == 0 || images[0].getOriginalFilename().isEmpty() == true) return true;
		return false;
	}
	@Transactional 
	public void save(MultipartFile[] productImages, ProductEntity product) throws IOException{
		if(product.getId() != null) {//Case that product had
			ProductEntity oldProduct = productRepo.findById(product.getId()).get();// get data from target product
			if(!isEmptyUploadFile(productImages)) {// if admin uploads images
				//take old image list
				List<ProductImages> imageList = oldProduct.getProductImages();
				//delete images of this product on host
				for(ProductImages prdImage : imageList) {
					new File("C:\\Users\\Duc\\Desktop\\shoe_shop_springboot_application\\com.shoes_shop.duc\\uploads\\"+prdImage.getPath()).delete();
				}
				//delete images of this product on database
				product.removeProductImages();
				
				product.removeProductAvatar();
				
			
			}
			else {
				product.setProductImages(oldProduct.getProductImages());
				product.setAvatar(oldProduct.getAvatar());
			}
			//created update
			if(productRepo.findById(product.getId()).get().compare(product) || !isEmptyUploadFile(productImages))
			{
				LocalDateTime now = LocalDateTime.now();  
			    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
			    String formatDateTime = now.format(format); 
			    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
				product.setUpdatedDate(LocalDateTime.parse(formatDateTime, formatter));
			}
			else 
			product.setUpdatedDate(oldProduct.getUpdatedDate());
			product.setCreatedDate(oldProduct.getCreatedDate());
		}
		
		else {
			LocalDateTime now = LocalDateTime.now();  
		    DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
		    String formatDateTime = now.format(format); 
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
			product.setCreatedDate(LocalDateTime.parse(formatDateTime, formatter));
		}
		
		if(!isEmptyUploadFile(productImages)) {
			for(MultipartFile productImg : productImages) {
				productImg.transferTo(new File("C:\\Users\\Duc\\Desktop\\shoe_shop_springboot_application\\com.shoes_shop.duc\\uploads\\" + productImg.getOriginalFilename()));
				ProductImages _productImg = new ProductImages();
				_productImg.setPath(productImg.getOriginalFilename());
				_productImg.setTitle(productImg.getOriginalFilename());
				product.addProductImages(_productImg);
			}
			product.setAvatar(productImages[0].getOriginalFilename());
		}
		Slugify slg = new Slugify();
		product.setSeo(slg.slugify(product.getTitle() +""+System.currentTimeMillis()));
		productRepo.save(product);
		for(String size : product.getSize().split("-")) 
		{
			LocalDateTime now = LocalDateTime.now();    
			SizeEntity s = new SizeEntity();
			s.setCreatedDate(now);
			s.setSize(Integer.parseInt(size));
			if(sizeRepo.findByStatusAndSize(true,Integer.parseInt(size)) == null)
			sizeRepo.save(s);
			product.addProductSizes(sizeRepo.findByStatusAndSize(true, Integer.parseInt(size)));
			String sql = "INSERT INTO tbl_sizes_products(product_id,size_id) VALUES (?1,?2)";
			entityManager.createNativeQuery(sql).setParameter(1, product.getId())
			.setParameter(2, sizeRepo.findByStatusAndSize(true,Integer.parseInt(size)).getId()).executeUpdate();
		}
	}
	@Async
	public void sendNoti(ProductEntity product) {
		//send noti to user by email
		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				SimpleMailMessage message = new SimpleMailMessage();
		        for(EmailEntity em : emailRepo.findAll()) {
			        message.setTo(em.getEmail());
			        message.setSubject("HOT NEW");
			        message.setText("Chúng tôi mới bán thêm một sản phẩm mới tên là " +product.getTitle()+
			        		". nhấn vào đây để biết thêm thông tin chi tiết");
			        emailSender.send(message);
		        }
	}
	@SuppressWarnings("unchecked")
	public List<ProductEntity> search(ProductSearching productSearching){
		String sql = "select * from tbl_products where 1=1 and status = 1";
		
		if(productSearching.getCategoryId() != null && productSearching != null) {
			sql+= " and category_id = "+ productSearching.getCategoryId();
		}
		if(productSearching.getSeoCategory() != null && productSearching != null) {
			sql+= " and category_id in (select id from tbl_category where seo = '"+productSearching.getSeoCategory()+"')";
		}
		if(productSearching.getId() != null && productSearching != null) {
			sql+= " and id = "+ productSearching.getId();
		}
		Query query = entityManager.createNativeQuery(sql, ProductEntity.class);
		
		//query.setFirstResult(0);
		//query.setMaxResults(4);
		
		return query.getResultList();
	}
	
}
