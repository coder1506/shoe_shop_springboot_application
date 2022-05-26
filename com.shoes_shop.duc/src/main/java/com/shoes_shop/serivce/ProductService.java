package com.shoes_shop.serivce;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
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
import com.shoes_shop.entities.CategoryEntity;
import com.shoes_shop.entities.EmailEntity;
import com.shoes_shop.entities.ProductEntity;
import com.shoes_shop.entities.ProductImages;
import com.shoes_shop.entities.SaleOrder;
import com.shoes_shop.entities.SaleOrderProducts;
import com.shoes_shop.entities.SaleProductEntity;
import com.shoes_shop.entities.SizeEntity;
import com.shoes_shop.entities.User;
import com.shoes_shop.model.ProductSearching;
import com.shoes_shop.model.TotalInCate;
import com.shoes_shop.repositories.CategoryRepo;
import com.shoes_shop.repositories.EmailRepo;
import com.shoes_shop.repositories.ProductRepo;
import com.shoes_shop.repositories.SaleORepo;
import com.shoes_shop.repositories.SaleProductRepo;
import com.shoes_shop.repositories.SaleorderRepo;
import com.shoes_shop.repositories.SizeRepo;
import com.shoes_shop.repositories.UserRepo;

@Service
public class ProductService {
	@PersistenceContext protected EntityManager entityManager;
	@Autowired
	private ProductRepo productRepo;
	@Autowired
	private SaleORepo saleorderRepo;
	@Autowired
	private SaleProductRepo saleProductRepo;
	@Autowired
	public JavaMailSender emailSender;
	@Autowired
	EmailRepo emailRepo;
	@Autowired
	SizeRepo sizeRepo;
	@Autowired
	UserRepo userRepo;
	@Autowired
	private CategoryRepo categoryRepo;
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
					new File("C:\\Users\\ADMIN\\Desktop\\shoe_shop_springboot_application\\com.shoes_shop.duc\\uploads\\"+prdImage.getPath()).delete();
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
				product.setUpdatedDate(LocalDateTime.now());
			}
			else 
			product.setUpdatedDate(oldProduct.getUpdatedDate());
			product.setCreatedDate(oldProduct.getCreatedDate());
		}
		
		else {
			product.setCreatedDate(LocalDateTime.now());
		}
		
		if(!isEmptyUploadFile(productImages)) {
			boolean checkAvatar = false;
			for(MultipartFile productImg : productImages) {
				productImg.transferTo(new File("C:\\Users\\ADMIN\\Desktop\\shoe_shop_springboot_application\\com.shoes_shop.duc\\uploads\\" + productImg.getOriginalFilename()));
				ProductImages _productImg = new ProductImages();
				_productImg.setPath(productImg.getOriginalFilename());
				_productImg.setTitle(productImg.getOriginalFilename());
				product.addProductImages(_productImg);
			}
			for(MultipartFile productImg : productImages) {
				if(productImg.getOriginalFilename().contains("avatar")) {
					product.setAvatar(productImg.getOriginalFilename());
					checkAvatar = true;
					break;
				}
			}
			if(!checkAvatar) product.setAvatar(productImages[0].getOriginalFilename());
		}
		Slugify slg = new Slugify();
		product.setSeo(slg.slugify(product.getTitle() +""+System.currentTimeMillis()));
		productRepo.save(product);
		for(String size : product.getSize().split("-")) 
		{  
			SizeEntity s = new SizeEntity();
			s.setCreatedDate(LocalDateTime.now());
			s.setSize(Integer.parseInt(size));
			if(sizeRepo.findByStatusAndSize(true,Integer.parseInt(size)) == null)
			sizeRepo.save(s);
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
		        for(EmailEntity em : emailRepo.findByStatus(true)) {
			        message.setTo(em.getEmail());
			        message.setSubject("HOT NEW");
			        message.setText("Chúng tôi mới bán thêm một sản phẩm mới tên là " +product.getTitle()+
			        		". nhấn vào đây để biết thêm thông tin chi tiết");
			        emailSender.send(message);
		        }
		        for(User ur : userRepo.findByStatus(true)) {
		        	message.setTo(ur.getEmail());
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
		
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<TotalInCate> getTotalInCateByDate(LocalDateTime fromDate, LocalDateTime toDate, List<CategoryEntity> cates){
		List<SaleProductEntity> Sprs = saleProductRepo.findAll();
		List<CategoryEntity> cate = categoryRepo.findAll();
		List<ProductEntity> prs = productRepo.findAll();
		List<SaleOrder> sor = saleorderRepo.getAllBetweenDatesAndPay(fromDate, toDate, true);
		List<TotalInCate> results = new ArrayList<TotalInCate>();
		for(int i = 0; i < cates.size(); i++) {
			results.add(new TotalInCate(cates.get(i).getName(), BigDecimal.ZERO));
		}
		for(int i = 0; i < cate.size(); i++) {
			for(int j = 0; j < prs.size(); j++) {
				for(int k = 0; k < Sprs.size(); k++) {
					for(int d = 0; d < sor.size(); d++) {
						if(cate.get(i).getId() == prs.get(j).getCategory().getId() && prs.get(j).getId() == Sprs.get(k).getProduct_id() && sor.get(d).getId() == Sprs.get(k).getSaleorder_id()) {
							int index = containsCategoryValue(results, cate.get(i).getName());
							BigDecimal total = new BigDecimal(Sprs.get(k).getQuality()).multiply(prs.get(j).getPrice());
							if(index == -1) {
								results.add(new TotalInCate(cate.get(i).getName(), total));
							}else {
								results.get(index).setTotal(results.get(index).getTotal().add(total));
							}
						}
					}
				}
			}
		}
		return results;
	}
	
	public int containsCategoryValue(List<TotalInCate> arr, String value){
		for(int i = 0; i < arr.size(); i++) {
			if(arr.get(i).getCategory().equals(value)) {
				return i;
			}
		}
		return -1;
	}
}
