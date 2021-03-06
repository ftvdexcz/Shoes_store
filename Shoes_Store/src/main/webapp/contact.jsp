<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Thế giới giày</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/global.css">
    <link rel="icon" href="img/icon_title.png" type="image/icon type">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>

<body>
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
            <div class="logo"><a href="index.jsp"><img src="img/shop_logo.jpg" alt=""></a></div>
            <ul class="menu">
                <li><a href="index.jsp">trang chủ</a></li>
                <li><a href="about.jsp">giới thiệu</a></li>
                <li>
                    <a href="product">sản phẩm <i class="fa fa-angle-down"></i></a>
                    <ul class="product-menu">
                       <c:forEach var="b" items="${list_brands}">
							<li><a href="product?brand=${b.id}">${b.name }</a></li>
						</c:forEach>
                    </ul>
                </li>
                <li><a href="news.jsp">tin tức</a></li>
                <li><a href="contact.jsp">liên hệ</a></li>
            </ul>
        </div>

        <div class="contact-banner">

        </div>

        <div class="contactus">
            <div class="contact-form" id="contact-form">
                <div class="form-img">
                    <img src="img/img_contact_form.jpg" alt="">
                </div>
                <div class="form-controll">
                    <p>LIÊN HỆ VỚI CHÚNG TÔI</p>
                    <input type="text" name="TITLE" placeholder="Họ và tên">
                    <input type="text" name="EMAIL" placeholder="Email">
                    <input type="text" name="PHONE" placeholder="Số điện thoại">
                    <input type="text" name="CONTENT" placeholder="Nội dung">
                    <br>
                    <button class="contact-send"> Gửi </button>
                </div>
            </div>

            <div class="other-contact">
                <h2>Các cách khác để liên hệ với chúng tôi</h2>
                <div class="contact-row">
                    <div class="contact-item">
                        <div><i class="fab fa-instagram"></i></div>

                    </div>
                    <div class="contact-item">
                        <div><i class="fab fa-facebook-f"></i></div>
                    </div>
                    <div class="contact-item">
                        <div><i class="fab fa-twitter"></i></div>
                    </div>
                    <div class="contact-item">
                        <div><i class="fas fa-phone"></i></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer">
            <div class="footer-container">
                <div class="about">
                    <div class="logo"><a href="index.jsp"><img src="img/shop_logo.jpg" alt=""></a></div>
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
                        <div><i class="fab fa-facebook-f"></i></div>
                        <div><i class="fab fa-twitter"></i></div>
                        <div><i class="fab fa-instagram"></i></div>
                        <div><i class="fas fa-envelope"></i></div>
                    </div>
                </div>
            </div>
        </div>


        <div class="contact">
            <i class="fab fa-facebook-messenger"></i>
        </div>

    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</body>

</html>