<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thế giới giày</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/global.css">
<link rel="icon" href="img/icon_title.png" type="image/icon type">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<script defer src="js/script.js"></script>
</head>

<body>
	<div class="my-modal">
		<div class="mymodal-content">
			<a href="product"><img src="img/modal-banner.jpg" alt=""></a>
		</div>
	</div>

	<div class="main">
		<div class="header"></div>
		<div class="header2">
			<div class="header2-title">
				SẢN PHẨM CHÍNH HÃNG 100% | Hotline: <span>0362957746</span>
			</div>
			<div class="login-register">
				<i class="far fa-user"></i><a style="margin-left:10px" href="info.jsp">${sessionScope.user==null?"":sessionScope.user.name}</a>  <span style="display:${sessionScope.user==null?"":"none"}"><a href="login">Đăng nhập</a> | <a href="register.jsp">Đăng
					ký</a> <a href="cart" style="margin-left: 20px;"></span><i
					class="fas fa-shopping-cart"></i> <span class="cart-quantity">${sessionScope.list_orders.size()>0?sessionScope.list_orders.size():"0"}</span></a>
			</div>
		</div>
		<div class="nav">
			<div class="logo">
				<a href="index.jsp"><img src="img/shop_logo.jpg" alt=""></a>
			</div>
			<ul class="menu">
				<li><a href="index.jsp">trang chủ</a></li>
				<li><a href="about.jsp">giới thiệu</a></li>
				<li><a href="product">sản phẩm <i class="fa fa-angle-down"></i></a>
					<ul class="product-menu">

						<c:forEach var="b" items="${list_brands}">
							<li><a href="product?brand=${b.id}">${b.name}</a></li>
						</c:forEach>

					</ul></li>
				<li><a href="news.jsp">tin tức</a></li>
				<li><a href="contact.jsp">liên hệ</a></li>
			</ul>
		</div>

		<div id="carouselShow" class="carousel slide" data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselShow" data-bs-slide-to="0"
					class="active"></li>
				<li data-bs-target="#carouselShow" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselShow" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active ">
					<img src="img/banner2.jpg" alt="">
				</div>
				<div class="carousel-item ">
					<img src="img/banner1.jpg" alt="">
				</div>
				<div class="carousel-item ">
					<img src="img/banner3.jpg" alt="">
				</div>
			</div>
		</div>

		<div class="myrow">
			<div class="row-banner">
				<img
					src="//bizweb.dktcdn.net/100/339/085/themes/699262/assets/index_banner_medium_1___1_image.jpg?1650512518408"
					alt="giay-mau-trang">
			</div>
			<div class="row-banner">
				<img
					src="//bizweb.dktcdn.net/100/339/085/themes/699262/assets/index_banner_medium_1___2_image.jpg?1650512518408"
					alt="giay-chay-bo">
			</div>
		</div>

		<div class="content">
			<h2>Sản phẩm nổi bật</h2>
			<div class="myrow">
				<div class="row-content">
					<img src="img/soccer_shoes.jpg" alt=""> <strong
						class="withhtml">DIAMOND EDGE PACK</strong>
					<p class="summary___3soIS gl-body">Khám phá bộ sưu tập giày
						bóng đá mới với thiết kế tinh chỉnh cuộc chơi của bạn.</p>
					<a href="product">Xem ngay</a>
				</div>
				<div class="row-content">
					<img src="img/ss-sw-tcc_tcm337-878685.jpg" alt=""> <strong
						class="withhtml">Sean Wotherspoon Equipment 93</strong>
					<p class="summary___3soIS gl-body">Cải tiến sắc màu của giày
						EQT '93 biểu tượng. Đã mở bán</p>
					<a href="product">Xem ngay</a>
				</div>
				<div class="row-content">
					<img
						src="img/stan-smith-vice-golf-teaser-carousel-image_tcm337-867622.jpg"
						alt=""> <strong class="withhtml">Stan Smith X Vice
						Golf</strong>
					<p class="summary___3soIS gl-body">Stan Smith – đôi giày mang
						tính biểu tượng của adidas đã trở lại sân Golf với phiên bản giới
						hạn độc đáo khi kết hợp cùng Vice Golf</p>
					<a href="product">Xem ngay</a>
				</div>
				<div class="row-content">
					<img
						src="img/sustainability-ss22-rfto-tease-HP-GLP-PH-tcc-Ninali-d_tcm337-865907.jpg"
						alt=""> <strong class="withhtml">TOGETHER,
						IMPOSSIBLE IS NOTHING</strong>
					<p class="summary___3soIS gl-body">Hãy tìm hiểu cách bạn có thể
						chung tay chấm dứt rác thải nhựa, bắt đầu từ ngày 9/5.</p>
					<a href="product">Xem ngay</a>
				</div>
			</div>
		</div>

		<div class="section-brands">
			<div class="brand-item">
				<img src="img/index_brand___1_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___2_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___3_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___4_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___5_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___6_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___7_image.jpg" alt="">
			</div>
			<div class="brand-item">
				<img src="img/index_brand___9_image.jpg" alt="">
			</div>
		</div>

		<div class="footer">
			<div class="footer-container">
				<div class="about">
					<div class="logo">
						<a href="index.jsp"><img src="img/shop_logo.jpg" alt=""></a>
					</div>
					<h4 style="padding-top: 40px;">Về chúng tôi</h4>
					<ul class="footer-menu">
						<li><a href="about.jsp">Giới thiệu</a></li>
						<li><a href="product">Sản phẩm</a></li>
						<li><a href="news.jsp">Tin tức</a></li>
						<li><a href="#">Đối tác</a></li>
						<li><a href="contact.jsp">Liên hệ</a></li>
					</ul>
				</div>
				<div class="address">
					<h4>THẾ GIỚI GIÀY - 100% AUTHENTIC</h4>
					<ul>
						<li><span>96A Trần Phú, P. Mộ Lao, Hà Đông, Hà Nội</span></li>
						<li><span>Hotline: 0362957746</span></li>
						<li><span>Email: longdq.ptit@gmail.com</span></li>
					</ul>
				</div>
				<div>
					<h4>Kết nối với chúng tôi</h4>
					<div class="row-footer">
						<div>
							<i class="fab fa-facebook-f"></i>
						</div>
						<div>
							<i class="fab fa-twitter"></i>
						</div>
						<div>
							<i class="fab fa-instagram"></i>
						</div>
						<div>
							<i class="fas fa-envelope"></i>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- <div class="contact">
			<i class="fab fa-facebook-messenger"></i>

		</div> -->

	</div>

	<script type="text/javascript">
	console.log(${sessionScope.modalDisplay});
	const modal = document.querySelector('.my-modal');
	const modalContent = document.querySelector('.mymodal-content');

	modal.addEventListener('click', function () {
	  modal.classList.add('hidden');
	});

	modalContent.addEventListener('click', function (e) {
	  e.stopPropagation();
	});


	if(${sessionScope.modalDisplay}==1){
		setTimeout(function () {
		    modal.style.display = 'flex';
		  }, 4000);
		<%session.setAttribute("modalDisplay", 0);%>
	}
	</script>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>

</html>