-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_description` longtext COLLATE utf8mb4_bin,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `price` decimal(13,2) DEFAULT NULL,
  `producttype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `metarial_vs_skill` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_products_idx` (`category_id`),
  CONSTRAINT `fk_category_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (149,'Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen','<h2><strong>Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen.</strong></h2>','<h2>Mua Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen Size</h2><p><strong>Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen Size 42.5 </strong>mặt hàng giày dép thời trang chất lượng chính hãng của thương hiệu Adidas nổi tiếng thế giới, &nbsp;Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen đang được giảm giá ưu đãi&nbsp; tại gian hàng trên sàn thương mại điện tử shoes_shop.</p><h3><strong>Vài nét về Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen&nbsp;</strong></h3><p><strong>Giày Thể Thao Adidas Ultra Boost 20 Màu Xám Đen </strong>là một trong những sản phẩm nổi tiếng của Adidas với thiết kế được tính toán tốt nhất dành cho người dùng: mềm mại, thoải mái, kiểu dáng thể thao trẻ trung, chất liệu bền đẹp. Với đôi giày thời trang này chắc chắn bạn sẽ trở nên nổi bật và cuốn hút hơn.</p>','giay-the-thao-adidas-ultra-boost-20-mau-xam-den-5f6c0861c790b-24092020094553.jpg',29,'2020-12-22 10:51:37','2021-01-05 20:19:13',NULL,NULL,1,'giay-the-thao-adidas-ultra-boost-20-mau-xam-en1609852752745',2800000.00,'san-pham-moi-nhat',NULL,'<p>- Phần trên của giày <strong>Adidas Ultra Boost 20 </strong>được làm từ chất liệu vải dệt cao cấp bền đẹp trong suốt quá trình sử dụng.</p><p>- Đế ngoài bằng cao su mềm dẻo, lớp lót mềm mại mang lại cảm giác thoải mái cho đôi chân.</p><p>- Form giày đi lên chân vừa vặn, các đường chỉ khâu rất tinh tế và chắc chắn hài lòng mọi khách hàng.</p><p>- Giày thể thao Adidas luôn là sản phẩm luôn được khách hàng yêu thích bởi sự năng động, trẻ trung, tiện dụng, dễ dàng phối kết hợp với nhiều bộ trang phục và phù hợp đi trong nhiều hoàn cảnh khác nhau.</p><p><strong>KIỂU DÁNG:</strong>Giày thể thao</p><p><strong>GIỚI TÍNH:</strong>Nam</p><p><strong>MÀU SẮC:</strong>Xám đen</p><p><strong>CHẤT LIỆU:</strong>Vải dệt</p><p><strong>XUẤT XỨ:</strong>Đức</p><p><strong>MẶT HÀNG:</strong>Có sẵn</p>',NULL,'40-41-42-43','xam-den'),(150,'Giày Sneaker MLB Big Ball Chunky A New York Yankees Màu Trắng Logo Đen','<p>Giày Sneaker MLB Big Ball Chunky A New York Yankees Màu Trắng Logo Đen</p>','<p><strong>Giày MLB Big Ball Chunky A New York Yankees Màu Trắng Logo Đen</strong>&nbsp;là&nbsp;đôi giày cao cấp&nbsp;với thiết kế hiện đại, thời trang đến từ thương hiệu MLB nổi tiếng của Hàn Quốc.&nbsp;<strong>MLB Big Ball Chunky A&nbsp;</strong>sẽ cho bạn trải nghiệm tuyệt vời nhất khi đi lên chân.&nbsp;</p><h2><strong>Thiết kế&nbsp;Giày MLB Big Ball Chunky A New York Yankees</strong></h2><p>Giày MLB Big Ball Chunky được làm từ&nbsp;chất liệu da cao cấp, bền đẹp, thời gian sử dụng lâu dài. Form giày với các đường chỉ khâu vô cùng tỉ mỉ, sắc sảo.</p><p>Lót giày dày dặn, êm ái giúp chân luôn thoải mái dù mang giày suốt cả ngày.&nbsp;MLB Big Ball Chunky&nbsp;với vác đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn. Logo&nbsp;hãng MLB&nbsp;và chữ MLB ở mặt trên rất tinh tế và tạo điểm nhấn riêng cho&nbsp;đôi giày. Đế giày được thiết kế có độ ma sát cao, hạn chế trơn trượt.&nbsp;</p><p><strong>Giày MLB Big Ball Chunky A New York Yankees Màu Trắng Logo Đen size 260</strong>&nbsp;mang kiểu dáng&nbsp;giày Sneakers đẹp&nbsp;cá tính, dễ dàng kết hợp với nhiều trang phục khác nhau để tạo nên 1 set đồ đẹp khi đi chơi, đi học hay dạo phố,… Đế giày được độn cao giúp tôn dáng của người đi, đường may tinh tế, sắc nét.</p>','giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den avatar.jpg',13,'2020-12-22 11:45:29','2021-01-05 20:19:23',NULL,NULL,1,'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-en1609852763189',2400000.00,'san-pham-moi-nhat',NULL,'<figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>MLB</td></tr><tr><td>Xuất xứ</td><td>Giày Hàn Quốc</td></tr><tr><td>Kiểu dáng</td><td>Sneakers</td></tr><tr><td>Màu sắc</td><td>Giày màu trắng</td></tr><tr><td>Chất liệu</td><td>Giày da cao cấp</td></tr><tr><td>Phân loại</td><td>MLB BIG BALL CHUNKY</td></tr><tr><td>Size</td><td>40-41-42-43</td></tr></tbody></table></figure>',NULL,'40-41-42-43','trang-den'),(151,'Giày Thể Thao Adidas Energy Cloud 2 B44761 Màu Đen','<h2><strong>Giày Thể Thao Adidas Energy Cloud 2 B44761 Màu Đen</strong></h2>','<h2>Mua Giày Thể Thao Adidas Energy Cloud 2 B44761 Màu Đen Size</h2><p><strong>Giày Thể Thao Adidas Energy Cloud 2 B44761 Màu Đen </strong>mặt hàng giày dép thời trang chất lượng chính hãng của thương hiệu Adidas nổi tiếng thế giới, &nbsp;Giày Thể Thao Adidas Energy Cloud 2 B44761 Màu Đen đang được giảm giá ưu đãi&nbsp; tại gian hàng VHH trên sàn thương mại điện tử Vua Hàng Hiệu.</p><h3><strong>Vài nét về Giày Thể Thao Adidas Energy Cloud 2 B44761 Màu Đen&nbsp;</strong></h3><p><strong>Giày Thể Thao Adidas Energy Cloud 2 Màu Đen</strong> được thiết kế hiện đại đến từ thương hiệu Adidas nổi tiếng. Với gam màu sang trọng <strong>Adidas Energy Cloud&nbsp;</strong>cho bạn trở nên sành điệu và thật phong cách khi đi lên chân.</p><p>Đôi giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động. Form giày đi lên chân vừa vặn, thoải mái,&nbsp;được gia công tỉ mỉ và sắc sảo trong từng đường may, mũi chỉ giúp cho sản phẩm luôn bền chắc và thời hạn sử dụng lâu dài.</p><p>Đế giày mềm nhẹ cho người dùng thoải mái thử sức với các loại hình thể thao khác nhau.</p><p>Màu sắc trẻ trung, nổi bật dễ dàng kết hợp với nhiều trang phục khác nhau theo sở thích bản thân tạo nên 1 set đồ đẹp khi đi chơi, đi học hay dạo phố,…</p>','giay-the-thao-adidas-energy-cloud-2-b44761-mau-den-avatar.jpg',29,'2020-12-22 22:10:31','2021-01-05 20:19:34',NULL,NULL,1,'giay-the-thao-adidas-energy-cloud-2-b44761-mau-en1609852774240',2200000.00,'san-pham-moi-nhat',NULL,'<ul><li><strong>Kiểu dáng</strong>: Giày thể thao</li><li><strong>Giới tính</strong>: Nam</li><li><strong>Màu sắc</strong>: Đen</li><li><strong>Xuất xứ</strong>: Đức</li></ul>',NULL,'39-40-41-42-43','den'),(152,'Giày Sneakers Puma RS-X Hard Drive Unisex White/Galaxy Blue','<p>Giày Sneakers Puma RS-X Hard Drive Unisex White/Galaxy Blue</p>','<p><strong>Giày Puma RS-X Hard Drive Unisex White/Galaxy Blue Size 42</strong> là đôi sneakers thể thao cho nam sở hữu kiểu dáng siêu phong cách, hiện đại với thiết kế các lớp TPU được sắp xếp hợp lý. <strong>Giày Puma RS-X Hard Drive</strong> sẽ là mẫu giày mới nhất được đông đảo giới trẻ yêu thích của thương hiệu Puma.</p><h2><strong>Thiết kế của sản phẩm</strong></h2><p><strong>Giày Puma RS-X Hard Drive Unisex White/Galaxy Blue Size 42</strong> là mẫu sneaker mới nhất của thương hiệu nhà Puma. Đôi giày được thiết kế với form thể thao phóng đại mang đầy nét cá tính. Phần upper được làm bằng vải dệt mang đến sự thoáng khí dễ chịu. Lớp đệm Misole PU kết hợp công nghệ hổ trợ phần gót chân.</p><p>Lớp lót chống sốc bằng bọt mang đến sự êm ái tối đa. Đôi giày Puma có đế được làm bằng cao su có rãnh chống trượt tăng độ linh hoạt khi di chuyển.</p><p>-Đôi giày này phù hợp để bạn có thể dùng để đi chơi, đi học, đi làm hay đi dạo phố cùng bạn bè. Sở hữu kiểu dáng hiện đại, <strong>giày Puma RS-X Hard Drive size 42 màu trắng, xanh navy</strong> chắc chắn sẽ là sự lựa chọn tuyệt vời cho bạn.</p>','giay-sneakers-puma-rs-x-hard-drive-mens-white-galaxy-blue-5e4e3765aa418-20022020143813.jpg',13,'2020-12-22 22:17:07','2021-01-05 20:19:44',NULL,NULL,1,'giay-sneakers-puma-rs-x-hard-drive-unisex-white-galaxy-blue1609852784031',2300000.00,'san-pham-moi-nhat',NULL,'<figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td>Puma</td></tr><tr><td><strong>Xuất xứ</strong></td><td>Giày Đức</td></tr><tr><td><strong>Trọng lượng</strong></td><td>Nhẹ</td></tr><tr><td><strong>Kiểu dáng</strong></td><td>Giày Sneakers</td></tr><tr><td><strong>Màu sắc</strong></td><td>Giày trắng, xanh navy&nbsp;</td></tr><tr><td><strong>Size giày</strong></td><td>41 - 42 - 43</td></tr></tbody></table></figure>',NULL,'41-42-43','trang-xanh'),(153,'Giày Vans Old Skool Black/White VN000D3HY28 Màu Đen Trắng','<h2><strong>Giày Sneaker Vans Old Skool Black/White VN000D3HY28 Màu Đen Trắng</strong></h2>','<p><strong>Giày Sneaker Vans Old Skool Black/White VN000D3HY28 Màu Đen Trắng</strong> là đôi giày cao cấp đến từ thương hiệu Vans nổi tiếng của nước Mỹ. Với đôi <strong>giày Sneaker Vans thời trang</strong> này chắc chắn bạn sẽ trở nên nổi bật và cuốn hút hơn.</p><h2><strong>Đặc điểm của Giày Vans Old Skool Black/White VN000D3HY28</strong></h2><p>Đôi giày Sneaker Vans được làm từ chất liệu da lộn mix vải canvas cao cấp, bền đẹp trong suốt quá trình sử dụng.</p><p>Form giày đi lên chân vừa vặn, các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ đảm bảo hài lòng mọi khách hàng. <strong>Giày Sneaker Vans Old Skool Black/White VN000D3HY28 Màu Đen Trắng</strong> màu sắc đen /trắng dễ dàng kết hợp với nhiều trang phục khác nhau theo sở thích bản thân tạo nên 1 set đồ đẹp khi đi chơi, đi học hay dạo phố...</p><p>Với kiểu dáng Style trẻ trung, đẹp mắt, mang đậm phong cách, cá tính cho người mang. Phần đế giày có độ ma sát cao hạn chế trơn trượt cho người sử dụng.</p><p>Không chỉ dành cho người yêu sneaker, đôi giày còn phù hợp với những tín đồ đam mê thể thao với phong cách thời trang năng động, đậm nét cá tính.</p>','giay-sneaker-vans-old-skool-black-white-vn000d3hy28-mau-den-trang-avatar.jpg',30,'2020-12-22 22:21:08','2021-01-05 20:19:58',NULL,NULL,1,'giay-vans-old-skool-black-white-vn000d3hy28-mau-en-trang1609852797767',1800000.00,'san-pham-moi-nhat',NULL,'<figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td><strong>Vans</strong></td></tr><tr><td><strong>Xuất xứ</strong></td><td>Giày Mỹ</td></tr><tr><td><strong>Kiểu dáng</strong></td><td>Sneakers</td></tr><tr><td><strong>Màu sắc</strong></td><td>Giày Đen Trắng</td></tr><tr><td><strong>Chất liệu</strong></td><td>Da lộn mix vải canvas</td></tr></tbody></table></figure>',NULL,'40-41-42-43','den-trang'),(154,'Giày Thể Thao Nike Jordan 1 Mid SE Purple Heel Phối Màu','<p>Giày Thể Thao Nike Jordan 1 Mid SE Purple Heel Phối Màu</p>','<p><strong>Giày Thể Thao Nike Jordan 1 Mid SE Purple Heel Phối Màu</strong> với kiểu dáng trẻ trung, hiện đại đến từ thương hiệu Nike nổi tiếng của Mỹ. Đôi giày <strong>Nike Jordan 1 Mid SE Purple Heel</strong>&nbsp;sẽ cho bạn trải nghiệm tuyệt vời nhất khi đi lên chân.</p><h2><strong>Đặc điểm nổi bật của sản phẩm</strong></h2><p>Giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động.</p><p>Form giày đi lên chân vừa vặn, các đường nét của đôi giày vô cùng tinh tế và sắc sảo hài lòng mọi khách hàng. Họa tiết hoa trang trí tạo điểm nhấn độc đáo riêng.</p><p>Bên trong giày có đế đệm êm ái, mang lại cảm giác dễ chịu khi sử dụng, không gây đau chân. Đế giày mềm nhẹ, có độ ma sát tốt hạn chế trơn trượt mang lại sự thoải mái ngay cả khi bạn đi giày trong một khoảng thời gian dài.</p><p>Màu sắc nổi bật dễ dàng kết hợp với nhiều trang phục khác nhau theo sở thích bản thân tạo nên 1 set đồ đẹp khi đi chơi, đi học hay dạo phố, tập luyện thể dục, thể thao...</p><ul><li><strong>Kiểu dáng:</strong> Giày thể thao</li><li><strong>Giới tính:</strong> Nam</li><li><strong>Màu sắc:</strong> Phối màu</li><li><strong>Xuất xứ:</strong> Mỹ</li><li><strong>Giới thiệu đôi nét về thương hiệu Nike</strong></li></ul><p>Nike là hãng thời trang thể thao nổi tiếng nước Mỹ được thành lập từ năm 1964 với tên gọi là Blue Ribbon Sports. Về sau cho đến năm 1971 thì Nike mới trở thành tên chính thức.</p><p>Những sản phẩm và bộ sưu tập của Nike hướng đến phong cách đặc trưng đó là sự táo bạo, ham muốn chinh phục và quyết tâm trong thi đấu. Đây cũng là tinh thần được nuôi dưỡng và phát triển trong suốt chặng đường hoạt động của Nike.</p><p>Nike ngày nay đã trở thành thương hiệu thể thao nổi tiếng trên thế giới. Những sản phẩm của thương hiệu Nike có chất lượng cùng thiết kế rất độc đáo.</p>','giay-the-thao-nike-jordan-1-mid-se-purple-heel-phoi-mau-avatar.jpg',14,'2020-12-25 21:10:39','2021-01-05 20:23:24',NULL,NULL,1,'giay-the-thao-nike-jordan-1-mid-se-purple-heel-phoi-mau1609853004263',6000000.00,'san-pham-noi-bat',NULL,'<ul><li><strong>KIỂU DÁNG</strong>Giày thể thao</li><li><strong>GIỚI TÍNH</strong>Nam</li><li><strong>MÀU SẮC</strong>Phối màu</li><li><strong>CHẤT LIỆU</strong>Da lộn</li><li><strong>XUẤT XỨ</strong>Mỹ</li><li><strong>MẶT HÀNG</strong>Có sẵn</li></ul>',NULL,'40-41-42-43','den-trang'),(155,'Giày Thể Thao Converse 1970s High Black Fire Màu Đen Đỏ','<p>Giày Thể Thao Converse 1970s High Black Fire Màu Đen Đỏ</p>','<p><strong>Giày Thể Thao Converse 1970s High Black Fire Màu Đen Đỏ</strong> sản phẩm đến từ thương hiệu Converse nổi tiếng của Mỹ. Với thiết kế Độc - Lạ - Phá cách,&nbsp; đôi giày đang nhận được sự quan tâm từ rất nhiều các bạn trẻ.</p><h2><strong>Đặc điểm nổi bật của Giày Converse 1970s High</strong></h2><p>Giày <strong>Converse 1970s High</strong>&nbsp;được làm từ chất liệu Canvas cao cấp, form dáng đẹp, đi gọn, êm chân và vô cùng thời trang. Đôi giày với các đường nét chỉ khâu tỉ mỉ và chắc chắn.&nbsp;</p><p>Converse Chuck 1970s sử dụng công nghệ OrthoLite hiện đại giúp giày có độ êm ái tuyệt đối, bảo vệ chân của người dùng lên tối đa.</p><p>Công nghệ khâu trên vải chất lượng hơn, vừa tạo nên các đường chỉ khâu đều hoàn hảo vừa gia tăng sự chắc chắn cho sản phẩm. Đường chỉ may cũng là một phần điểm nhấn giúp đôi giày trở nên mạnh mẽ cá tính hơn hẳn so với các sản phẩm khác.</p><p>Thiết kế cao cổ của sản phẩm giày <strong>Converse Chuck 1970s High</strong>&nbsp;vừa mang lại sự trẻ trung, vừa cá tính lại rất biết chiều lòng những tín đồ thời trang. Khác với những đôi Chuck 70 cổ thấp, sản phẩm cao cổ này mang lại tính chất thời trang và sự khác biệt hơn hẳn, dành cho những người yêu thích gu thời trang cá tính và nổi bật.</p><p>Phần đế giày <strong>Converse Chuck 1970s</strong>&nbsp;được bổ sung thêm phần đế ngoài để gia tăng phần chịu lực cũng như ổn định vòm, form dáng của giày được cứng cáp hơn.</p><ul><li><strong>Kiểu dáng</strong>: Giày sneakers</li><li><strong>Màu sắc</strong>: Đen đỏ</li><li><strong>Giới tính</strong>: Unisex</li><li><strong>Xuất xứ</strong>: Mỹ</li></ul>','giay-the-thao-converse-1970s-high-black-fire-mau-den-do-avatar.jpg',12,'2020-12-25 21:16:50','2021-01-05 20:23:35',NULL,NULL,1,'giay-the-thao-converse-1970s-high-black-fire-mau-en-o1609853014846',3000000.00,'san-pham-noi-bat',NULL,'<ul><li><strong>KIỂU DÁNG : </strong>Sneakers</li><li><strong>GIỚI TÍNH : </strong>Unisex</li><li><strong>MÀU SẮC : </strong>Đen - Đỏ</li><li><strong>CHẤT LIỆU : </strong>Da cao cấp</li><li><strong>XUẤT XỨ : </strong>Mỹ</li><li><strong>MẶT HÀNG : </strong>Có sẵn</li></ul>',NULL,'39-40-41-42','den-do'),(156,'Giày Thể Thao Adidas Original Boston SuperXR1 EE3654 Màu Đen','<p>Giày Thể Thao Adidas Original Boston SuperXR1 EE3654 Màu Đen</p>','<p><strong>Giày Thể Thao Adidas Original Boston SuperXR1 EE3654 Màu Đen </strong>mặt hàng giày dép thời trang chất lượng chính hãng của thương hiệu Adidas nổi tiếng thế giới, &nbsp;Giày Thể Thao Adidas Original Boston SuperXR1 EE3654 Màu Đen đang được giảm giá ưu đãi&nbsp; tại gian hàng VHH trên sàn thương mại điện tử Vua Hàng Hiệu.</p><h3><strong>Vài nét về Giày Thể Thao Adidas Original Boston SuperXR1 EE3654 Màu Đen</strong></h3><p><strong>Giày Thể Thao Adidas Original Boston SuperXR1 EE3654 Màu Đen</strong>&nbsp;đến từ thương hiệu Adidas nổi tiếng của Đức. <strong>Adidas Original Boston SuperXR1</strong>được thiết kế mang nét thể thao khỏe khoắn, năng động cho bạn trải nghiệm tuyệt vời khi đi lên chân.</p><h2><strong>Đặc điểm nổi bật của GiàyAdidas Original Boston SuperXR1</strong></h2><p>Đôi giày được làm từ chất liệu da tổng hợp cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động. Các đường nét của đôi giày vô cùng tinh tế và sắc sảo. Form giày đi lên chân vừa vặn vô cùng nổi bật.</p><p>Đế giày mềm mại cho người sử dụng thoải mái thử sức với các loại hình thể thao khác nhau từ chạy bộ, thể dục nhẹ nhàng, đế có độ bám tốt cùng độ nâng phù hợp giúp đôi chân vững vàng hơn khi di chuyển và hoạt động.</p><p>Màu sắc trẻ trung, nổi bật dễ dàng kết hợp với nhiều trang phục khác nhau theo sở thích bản thân tạo nên 1 set đồ đẹp khi đi chơi, đi học hay dạo phố,…</p>','giay-the-thao-adidas-original-boston-superxr1-ee3654-mau-den-avatar.jpg',29,'2020-12-25 21:32:23','2021-01-05 20:23:45',NULL,NULL,1,'giay-the-thao-adidas-original-boston-superxr1-ee3654-mau-en1609853024973',2000000.00,'san-pham-noi-bat',NULL,'<ul><li><strong>KIỂU DÁNG:</strong>Giày thể thao</li><li><strong>GIỚI TÍNH:</strong>Nam</li><li><strong>MÀU SẮC:</strong>Đen</li><li><strong>CHẤT LIỆU:</strong>Da cao cấp</li><li><strong>XUẤT XỨ:</strong>Đức</li><li><strong>MẶT HÀNG:</strong>Có sẵn</li></ul>',NULL,'40-41-42-43','den'),(157,'Giày Gucci Men\'s Ace Embroidered Sneaker White Leather With Bee Màu Trắng','<p>Giày Gucci Men\'s Ace Embroidered Sneaker White Leather With Bee Màu Trắng</p>','<p><strong>Giày Gucci Men\'s Ace Embroidered Sneaker White Leather With Bee màu trắng</strong> là mẫu giày sneakers cổ thấp của Gucci với họa tiết con ong thêu bằng chỉ vàng - biểu tượng của thương hiệu Gucci trên 3 sọc màu. <strong>Con ong trên giày</strong>&nbsp;là một họa tiết được giới thiệu lần đầu tiên trong trang phục may sẵn của Gucci vào những năm 1970.</p><h2><strong>Đặc điểm vượt trội của giày Gucci Men\'s Ace Embroidered</strong></h2><ul><li>Thiết kế tối giản, tinh tế, tạo thành điểm nhấn cho đôi chân của bạn.</li><li>Form dáng trẻ trung, năng động, tràn đầy sức sống.</li><li>Chất liệu da cao cấp, bền bỉ chạy đua với thời gian.</li><li>Đệm đế giày nâng niu bàn chân của bạn, giúp bạn luôn cảm thấy thoải mái.</li><li>Giày basic rất dễ phối đồ, phù hợp với mọi phong cách.</li><li>Giày làm từ chất liệu da cao cấp, form giày chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.</li><li>Màu sắc trắng dễ dàng kết hợp với nhiều trang phục khác nhau để thay đổi phong cách cho bản thân theo sở thích.</li></ul><p>Sneaker <strong>Gucci GC</strong>&nbsp;luôn là sự lựa chọn hàng đầu bởi sự năng động, trẻ trung, tiện dụng, dễ dàng phối kết hợp với nhiều bộ trang phục và phù hợp trong nhiều hoàn cảnh khác nhau.</p><p>Giày Gucci Men\'s Ace Embroidered Sneaker White Leather With Bee được làm bằng vật liệu được lựa chọn cẩn thận. Bảo vệ khỏi ánh sáng trực tiếp, nhiệt và mưa. Nếu nó trở nên ẩm ướt, hãy làm khô nó ngay lập tức bằng một miếng vải mềm, phủ đầy đôi giày bằng giấy lụa để giúp duy trì hình dạng và hấp thụ độ ẩm, sau đó lưu trữ trong túi và hộp flannel được cung cấp, làm sạch bằng vải mềm hoặc khô.</p>','giay-gucci-men-s-ace-embroidered-sneaker-white-leather-with-bee-mau-trang-avatar.jpg',15,'2020-12-25 21:48:56','2021-01-05 20:24:01',NULL,NULL,1,'giay-gucci-men-s-ace-embroidered-sneaker-white-leather-with-bee-mau-trang1609853040811',15600000.00,'san-pham-noi-bat',NULL,'<ul><li><strong>KIỂU DÁNG:</strong>Giày thể thao</li><li><strong>GIỚI TÍNH:</strong>Unisex</li><li><strong>MÀU SẮC:</strong>Trắng</li><li><strong>CHẤT LIỆU:</strong>Da cao cấp</li><li><strong>XUẤT XỨ:</strong>Ý</li><li><strong>MẶT HÀNG:</strong>Có sẵn</li></ul>',NULL,'40-41-42','trang'),(158,'Giày Gucci Black Leather Falacer Sneakers Màu Đen','<p>Giày Gucci Black Leather Falacer Sneakers Màu Đen</p>','<p><strong>Giày Gucci Black Leather Falacer Sneakers Màu Đen</strong> là đôi giày dành cho nam đến từ thương hiệu Gucci nổi tiếng. Với thiết kế hiện đại, G<strong>ucci Black Leather Falacer Sneakers</strong> cho bạn trải nghiệm tuyệt vời nhất khi đi lên chân.</p><h2><strong>Thiết kế nổi bật của Giày Gucci Black Leather Falacer Sneakers</strong></h2><p>Giày sneaker Gucci Black đế thấp được thiết kế với âm hưởng hoài cổ bằng chất liệu da cao cấp với đường sọc dọc hai bên. Các đường chỉ khâu của đôi giày vô cùng chắc chắn và tỉ mỉ hài lòng mọi khách hàng. Phần gót sau được hoàn thiện bằng da kim loại thêu ong với màu sắc tương phản - một chi tiết đặc biệt của nhà mốt bắt đầu từ đôi giày thể thao.</p><p>Mẫu giày này còn được phối màu khá đơn giản nhưng vô cùng tinh tế với tông màu đen chủ đạo phối viền xanh, đỏ bắt mắt. Đây có lẽ sẽ là một điểm nhấn mạnh mẽ trong lòng cộng đồng người yêu giày và là một sản phẩm thích hợp với mọi lứa tuổi trong mọi hoàn cảnh : Đi chơi, dã ngoại, đi học, đi làm,...</p><p>Giày sneaker Gucci là sản phẩm luôn được khách hàng yêu thích bởi sự năng động, trẻ trung, tiện dụng, dễ dàng phối kết hợp với nhiều bộ trang phục và phù hợp đi trong nhiều hoàn cảnh khác nhau.</p>','giay-gucci-black-leather-falacer-sneakers-mau-den-avatar.jpg',15,'2020-12-25 21:54:46','2021-01-04 12:39:19',NULL,NULL,1,'giay-gucci-black-leather-falacer-sneakers-mau-en1609738758787',9500000.00,'san-pham-noi-bat',NULL,'<ul><li><strong>KIỂU DÁNG:</strong>Sneakers</li><li><strong>GIỚI TÍNH:</strong>Nam</li><li><strong>MÀU SẮC:</strong>Đen</li><li><strong>CHẤT LIỆU:</strong>Da cao cấp</li><li><strong>XUẤT XỨ:</strong>Ý</li></ul>',NULL,'40-41-42','den'),(159,'Giày Converse Chuck 1970s High Black White Màu Đen','<h2><strong>Giày Converse Chuck 1970s High Black White Màu Đen</strong></h2>','<p>Giày <strong>Converse Chuck 1970s High Black</strong> được làm từ chất liệu Canvas cao cấp, form dáng đẹp, đi gọn, êm chân và vô cùng thời trang. Đôi giày với các đường nét chỉ khâu tỉ mỉ và chắc chắn.&nbsp;</p><p>Converse Chuck 1970s sử dụng công nghệ OrthoLite hiện đại giúp giày có độ êm ái tuyệt đối, bảo vệ chân của người dùng lên tối đa.</p><p>Công nghệ khâu trên vải chất lượng hơn, vừa tạo nên các đường chỉ khâu đều hoàn hảo vừa gia tăng sự chắc chắn cho sản phẩm. Đường chỉ may cũng là một phần điểm nhấn giúp đôi giày trở nên mạnh mẽ cá tính hơn hẳn so với các sản phẩm khác.</p><p>Thiết kế cao cổ của sản phẩm giày <strong>Converse Chuck 1970s High Black</strong>&nbsp;vừa mang lại sự trẻ trung, vừa cá tính lại rất biết chiều lòng những tín đồ thời trang. Khác với những đôi Chuck 70 cổ thấp, sản phẩm cao cổ này mang lại tính chất thời trang và sự khác biệt hơn hẳn, dành cho những người yêu thích gu thời trang cá tính và nổi bật.</p><p>Phần đế giày <strong>Converse Chuck 1970s</strong>&nbsp;được bổ sung thêm phần đế ngoài để gia tăng phần chịu lực cũng như ổn định vòm, form dáng của giày được cứng cáp hơn.</p>','giay-converse-chuck-1970s-high-black-mau-den-avatar.jpg',12,'2021-01-02 22:20:08',NULL,NULL,NULL,1,'giay-converse-chuck-1970s-high-black-white-mau-en1609600808848',2850000.00,'san-pham-giam-gia',NULL,'<ul><li><strong>KIỂU DÁNG : </strong>Sneakers</li><li><strong>GIỚI TÍNH : </strong>Unisex</li><li><strong>MÀU SẮC : </strong>Đen</li><li><strong>CHẤT LIỆU : </strong>Canvas</li><li><strong>XUẤT XỨ : </strong>Mỹ</li><li><strong>MẶT HÀNG : </strong>Có sẵn</li></ul>',2000000.00,'40-41-42','den-trang'),(160,'Giày Thể Thao Converse All-Court - 168785C Màu Đe','<h2><strong>Giày Thể Thao Converse All-Court - 168785C Màu Đen</strong></h2>','<h2><strong>Mô tả Giày Converse All-Court - 168785C</strong></h2><p>Bộ sưu tập Converse All-Court với những mẫu giày đậm chất sporty những vẫn cực thoải mái để diện hàng ngày, cho bạn một vẻ ngoài thật năng động. Giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế vừa vặn. Form giày với các đường chỉ khâu vô cùng chắc chắn hài lòng mọi khách hàng.</p><p>Phần đế giày được thiết kế mềm, nhẹ, hạn chế trơn trượt cho người sử dụng. Màu sắc giày đơn giản dễ phối đồ cho bạn phong cách trẻ trung, thời trang.</p><p>Giày thể thao <strong>Converse</strong> là sự lựa chọn hàng đầu bởi sự năng động, khỏe khoắn, tiện dụng, dễ dàng phối kết hợp với nhiều bộ trang phục và phù hợp đi trong nhiều hoàn cảnh khác nhau.</p>','giay-the-thao-converse-all-court-168785c-mau-den-avatar.jpg',12,'2021-01-03 16:32:04','2021-01-03 16:42:52',NULL,NULL,1,'giay-the-thao-converse-all-court-168785c-mau-e1609666971600',2200000.00,'san-pham-giam-gia',NULL,'<ul><li><strong>KIỂU DÁNG : </strong>Giày thể thao</li><li><strong>GIỚI TÍNH : </strong>Nam</li><li><strong>MÀU SẮC : </strong>Đen</li><li><strong>CHẤT LIỆU : </strong>Da cao cấp</li><li><strong>XUẤT XỨ : </strong>Mỹ</li><li><strong>MẶT HÀNG : </strong>Có sẵn</li></ul>',1850000.00,'40-41-42-43','den'),(161,'Giày Thể Thao Adidas EQT Gazelle Shoes EE6486 Màu Trắng Xám','<h2><strong>Giày Thể Thao Adidas EQT Gazelle Shoes EE6486 Màu Trắng Xám</strong></h2>','<h3><strong>Vài nét về Giày Thể Thao Adidas EQT Gazelle Shoes EE6486 Màu Trắng Xám</strong></h3><p>Giày Thể Thao Adidas EQT Gazelle Shoes EE6486 Màu Trắng Xám thiết kế đẹp mắt, kiểu dáng hiện đại. Với đôi giày thời trang này chắc chắn bạn sẽ trở nên nổi bật và cuốn hút hơn.</p><p><strong>Đặc điểm nổi bật của giày Adidas EQT Gazelle Shoes</strong></p><p>- Phần trên của giày adidas EQT Gazelle Shoes EE6486 được làm từ chất liệu Da / vải lưới cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động.</p><p>- Đế ngoài bằng cao su mềm dẻo, lớp lót mềm mại mang lại cảm giác thoải mái cho đôi chân.</p><p>- Form giày đi lên chân vừa vặn, các đường chỉ khâu rất tinh tế và chắc chắn đảm bảo hài lòng mọi khách hàng.</p><p>Giày thể thao Adidas luôn là sự lựa chọn hàng đầu bởi sự năng động, trẻ trung, tiện dụng, dễ dàng phối kết hợp với nhiều bộ trang phục và phù hợp đi trong nhiều hoàn cảnh khác nhau.</p><p><strong>Hình ảnh sản phẩm</strong></p>','giay-the-thao-adidas-eqt-gazelle-shoes-ee6486-mau-trang-xam-avatar.jpg',29,'2021-01-03 16:36:41','2021-01-03 16:41:56',NULL,NULL,1,'giay-the-thao-adidas-eqt-gazelle-shoes-ee6486-mau-trang-xam1609666916448',22000000.00,'san-pham-giam-gia',NULL,'<ul><li><strong>KIỂU DÁNG : </strong>Giày thể thao</li><li><strong>GIỚI TÍNH : </strong>Nữ</li><li><strong>MÀU SẮC : </strong>Trắng - Xám</li><li><strong>CHẤT LIỆU : </strong>Vải và da</li><li><strong>XUẤT XỨ : </strong>Đức</li><li><strong>PHÂN LOẠI : </strong><a href=\"https://vuahanghieu.com/adidas/giay/adidas-eqt-boost\">Adidas EQT boost</a></li><li><strong>MẶT HÀNG : </strong>Có sẵn</li></ul>',17500000.00,'40-41-42-43','trang-xam'),(162,'Giày Alexander Mcqueen','<h2><strong>Giày Sneaker Alexander Mcqueen</strong></h2>','<h2><strong>Đặc điểm vượt trội của giày Alexander McQueen Sneaker:</strong></h2><ul><li>Thiết kế tối giản, tinh tế, tạo thành điểm nhấn cho đôi chân của bạn.</li><li>Form dáng trẻ trung, năng động, tràn đầy sức sống.</li><li>Chất liệu da cao cấp, bền bỉ chạy đua với thời gian.</li><li>Đệm đế giày nâng niu bàn chân của bạn, giúp bạn luôn cảm thấy thoải mái.</li><li>Giày basic rất dễ phối đồ, phù hợp với mọi phong cách.</li></ul><p>Thiết kế của mẫu giày&nbsp;trắng này đươc gia công tỉ mỉ trên <strong>chất liệu da bê mềm mịn</strong>, mũi tròn, đế cao su bền bỉ. Điểm nhấn với chi tiết gót da đen cùng tên thương hiệu thể hịện nét đẹp đẳng cấp, thời thượng. Sneaker McQueen luôn là sự lựa chọn hàng đầu bởi sự năng động, trẻ trung, tiện dụng, dễ dàng phối kết hợp với nhiều bộ trang phục và phù hợp trong nhiều hoàn cảnh khác nhau.</p><h2><strong>Thương hiệu&nbsp;Alexander McQueen</strong></h2><p>\"Đứa con ngỗ nghịch của thời trang Anh\" là danh hiệu mà giới mộ điều thời trang dành tặng cho thương hiệu Alexander McQueen. Đứa con ngỗ nghịch này cũng như người cha đẻ của nó, nhà thiết kế Lee Alexander McQueen đã không ngừng mang sự thăng hoa của trường phái siêu thực, sự đối lập của vẻ đẹp dị biệt vào từng bộ trang phục trong 24 năm qua. Mỗi bộ sưu tập là một thế giới kỳ ảo được nhà mốt Alexander McQueen dựng lên bằng đăng-ten, ren và những thướt vải ánh kim độc đáo.</p>','giay-sneaker-alexander-mcqueen-avatar.jpg',17,'2021-01-03 16:46:42','2021-01-04 15:40:50',NULL,NULL,1,'giay-alexander-mcqueen1609749650861',13200000.00,'san-pham-giam-gia',NULL,'<ul><li><strong>KIỂU DÁNG : </strong>Giày thể thao</li><li><strong>GIỚI TÍNH : </strong>Nam</li><li><strong>MÀU SẮC : </strong>Trắng</li><li><strong>CHẤT LIỆU : </strong>Da &amp; cao su</li><li><strong>XUẤT XỨ : </strong>Anh</li><li><strong>MẶT HÀNG : </strong>Có sẵn</li></ul>',12000000.00,'39-40-41-42','trang'),(163,'Giày Dolce & Gabbana Roma Sneaker Aus Bedrucktem Màu Đen Trắng','<h2><strong>Giày Dolce &amp; Gabbana Roma Sneaker Aus Bedrucktem Màu Đen Trắng</strong></h2>','<p><strong>Giày Dolce &amp; Gabbana Roma Sneaker Aus Bedrucktem Màu Đen Trắng</strong> khi được tung ra thị trường đã luôn tạo ấn tượng mạnh với giới mộ điệu bởi toát lên vẻ năng động, khỏe khoắn. <strong>Giày Dolce &amp; Gabbana Roma Sneaker Aus Bedrucktem</strong>&nbsp;là một trong những siêu phẩm đang \"gây sốt\" trong giới thời trang hiện nay.</p><p>Giày được làm từ chất liệu da cao cấp, bền đẹp trong suốt thời gian sử dụng. Mũi giày tròn, đế cao su tổng hợp, xẻ rãnh tạo cảm giác thoải mái khi đi kể cả khi bạn phải di chuyển trong thời gian dài.</p><p>Màu sắc đơn giản dễ phối đồ với nhiều trang phục khác nhau để thay đổi phong cách cho bản thân. Thích hợp đi với tất cả các mùa trong năm: Xuân - Hè - Thu - Đông.</p><p>Sở hữu kiểu dáng hiện đại giày<strong> Dolce &amp; Gabbana </strong>chắc chắn sẽ là sự lựa chọn tuyệt vời dành cho bạn.</p>','giay-dolce-gabbana-roma-sneaker-aus-bedrucktem-mau-den-trang-avatar.jpg',19,'2021-01-03 16:51:17','2021-01-04 15:32:58',NULL,NULL,1,'giay-dolce-gabbana-roma-sneaker-aus-bedrucktem-mau-en-trang1609749177939',14500000.00,'san-pham-giam-gia',NULL,'<ul><li><strong>KIỂU DÁNG : </strong>Giày thể thao</li><li><strong>GIỚI TÍNH : </strong>Unisex</li><li><strong>MÀU SẮC : </strong>Đen trắng</li><li><strong>CHẤT LIỆU : </strong>Da cao cấp</li><li><strong>XUẤT XỨ : </strong>Ý</li></ul>',14500000.00,'40-41-42-43','den-trang'),(177,'Giày Adidas Yeezy Boost 350 \"Turtle Dove\"','<p>Giày Adidas Yeezy Boost 350 \"Turtle Dove\"</p>','<p>:&nbsp; &nbsp;Sau thành công của Yeezy Boost 750, adidas đã giới thiệu tùy chọn low-top với Yeezy Boost 350&nbsp;</p><p>để khởi động mùa hè 2015. Nhiều người gọi hình bóng là ưu tiên hơn trong hai lựa chọn giày sneaker. Ghi nhận rất nhiều&nbsp;</p><p>vào cảm giác dễ dàng giống như tất trượt. Đường phối màu đầu tiên được đặt tên là \"Turtledove\", vì nó thể thao&nbsp;</p><p>Turtledove và Xám xanh được dệt xuyên suốt cấu trúc Primeknit của phần trên và đế TPU màu trắng bao bọc xung quanh&nbsp;</p><p>đệm bọt Boost có chiều dài đầy đủ. Phần gót màu trắng kết hợp với các điểm nhấn màu đỏ thể thao để hoàn thiện vẻ&nbsp;</p>','81acju3ZFWL._SR400,400-avatar_.jpg',29,'2021-01-06 16:10:33',NULL,NULL,NULL,1,'giay-adidas-yeezy-boost-350-turtle-dove-1609924233227',15000000.00,'san-pham-moi-nhat',NULL,'<p>&nbsp;</p><p>Chất liệu và kĩ thuật :&nbsp; Trên đôi giày sample này, phần chất liệu primeknit có cảm giác thô và cứng hơn so với primeknit&nbsp;</p><p>trên các phiên bản Yeezy 350 Boost được phát hành trước đây. Bên cạnh đó, do phối màu trắng nên pattern trên thân rất&nbsp;</p><p>khó thấy, dẫn đến việc xác định tính legit thông qua hình thức này gần như là không thể.</p><p>Nhưng theo anh chủ nhân của đôi giày và cũng là một người sưu tầm hàng sample, anh Thịnh cho biết có thể adidas&nbsp;</p><p>đang thử nghiệm chất liệu primeknit mới&nbsp;nên chúng&nbsp;có cảm giác thô hơn Yeezy 350 bình thường. Theo SNKR Việt Nam&nbsp;</p><p>thì việc này cũng có thể xảy ra nếu adidas thay đổi cách dệt primeknit hoặc cấu tạo, thành phần của loại chất liệu này.</p>',13000000.00,'39-40-41-42','den');
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 16:13:22