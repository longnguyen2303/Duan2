<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<link rel="icon" href="../../images/background.jpg" type="image/gif" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Sneaker</title>


<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- range slider -->

<!-- font awesome style -->
<link href="../../css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="../../css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="../../css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

	<div class="hero_area">
		<!-- header section strats -->
		<header class="header_section">
			<div class="header_top">
				<div class="container-fluid">
					<div class="top_nav_container">
						<div class="contact_nav">
							<a href=""> <i class="fa fa-phone" aria-hidden="true"></i> <span>
									Call : 0363338257 </span>
							</a> <a href=""> <i class="fa fa-envelope" aria-hidden="true"></i>
								<span> Email : sneaker247@gmail.com </span>
							</a>
						</div>
						<from class="search_form"> <input type="text"
							class="form-control" placeholder="Search here...">
						<button class="" type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
						</from>
						<div class="user_option_box">
							<a href="" class="account-link"> <i class="fa fa-user"
								aria-hidden="true"></i> <span> Tài Khoản </span>
							</a> <a href="" class="cart-link"> <i class="fa fa-shopping-cart"
								aria-hidden="true"></i> <span> Giỏ Hàng </span>
							</a>
						</div>
					</div>

				</div>
			</div>
			<div class="header_bottom">
				<div class="container-fluid">
					<nav class="navbar navbar-expand-lg custom_nav-container ">
						<a class="navbar-brand" href="/sneaker/trang-chu"> <span>
								Sneaker </span>
						</a>

						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class=""> </span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ">
								<li class="nav-item "><a class="nav-link"
									href="/sneaker/trang-chu">Trang chủ <span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#"> Giới
										thiệu</a></li>
								<li class="nav-item active"><a class="nav-link" href="/sneaker/productfilter">Sản
										phẩm</a></li>
								<!-- 	<li class="nav-item"><a class="nav-link"
									href="/sneaker/product">Quản lý</a></li>
								<li class="nav-item"><a class="nav-link" href="/sneaker/hoa-don">Bán hàng
								</a></li> -->
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</header>
		<!-- end header section -->
		<!-- 	<section class="slider_section ">
			<div id="customCarousel1" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="container ">
							<div class="row">
								<div class="col-md-6">
									<div class="detail-box">
										<h1>Chào mừng đến với cửa hàng của chúng tôi</h1>
										<p>Chúng tôi luôn mang đến cho bạn những điều mới mẻ ,
											tinh tế và phong cách nhất.</p>
										<a href=""> Đọc thêm </a>
									</div>
								</div>
								<div class="col-md-6">
									<div class="img-box">
										<img style="height: 350px" src="../../images/slideshow3.jpg"
											alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container ">
							<div class="row">
								<div class="col-md-6">
									<div class="detail-box">
										<h1>Chào mừng đến với cửa hàng của chúng tôi</h1>
										<p>Chúng tôi luôn mang đến cho bạn những điều mới mẻ ,
											tinh tế và phong cách nhất.</p>
										<a href=""> Đọc thêm </a>
									</div>
								</div>
								<div class="col-md-6">
									<div class="img-box">
										<img style="height: 350px" src="../../images/slideshow2.png"
											alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container ">
							<div class="row">
								<div class="col-md-6">
									<div class="detail-box">
										<h1>Chào mừng đến với cửa hàng của chúng tôi</h1>
										<p>Chúng tôi luôn mang đến cho bạn những điều mới mẻ ,
											tinh tế và phong cách nhất.</p>
										<a href=""> Đọc thêm </a>
									</div>
								</div>
								<div class="col-md-6">
									<div class="img-box">
										<img style="height: 350px" src="../../images/slideshow1.jpg"
											alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel_btn_box">
					<a class="carousel-control-prev" href="#customCarousel1"
						role="button" data-slide="prev"> <i class="fa fa-angle-left"
						aria-hidden="true"></i> <span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#customCarousel1"
						role="button" data-slide="next"> <i class="fa fa-angle-right"
						aria-hidden="true"></i> <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</section> -->
	</div>


	<!-- product section -->
	<br>
	<br>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-3">

					<h4 style="font-weight: bold;">Hãng</h4>

					<ul class="list-group list-group-flush">
						<c:forEach items="${listHang}" var="h">
							<li class="list-group-item"><a
								href="/sneaker/hang/${h.id}/product" class="nav-link">${h.ten}</a></li>
						</c:forEach>
					</ul>

					<br>
					<h4 style="font-weight: bold;">Giá</h4>
					<div style="margin-left: 20px;font-family: Constantia">
						<span><input type="radio" value="mintomax" name="giaCheck" checked/></span><span>  Từ thấp đến cao</span><br>
						<span><input type="radio" value="maxtomin" name="giaCheck" /></span><span>  Từ cao đến thấp</span><br>
					</div>
					<br>
					<h4 style="font-weight: bold;">Màu sắc</h4>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">An item</li>
						<li class="list-group-item">A second item</li>
						<li class="list-group-item">A third item</li>
						<li class="list-group-item">A fourth item</li>
						<li class="list-group-item">And a fifth one</li>
					</ul>
				</div>
				<div class="col-9 product_section layout_padding">
					<h4 style="text-align: center;">Sản phẩm</h4>
					<div class="container">
						<div class="row">

							<c:forEach items="${list}" var="sp">
								<div class="col-4">
									<div class="box">
										<div class="img-box">
											<img src="../../images/${sp.hinhAnh}" alt=""> <a
												href="/sneaker/detail/${sp.id}" class="add_cart_btn"> <span>
													Detail </span>
											</a>

										</div>
										<div class="detail-box">
											<h5>${sp.sanPham.ten}</h5>
											<div class="product_info">
												<h5>
													<span>Giá bán: </span>
													<fmt:formatNumber type="currency" value="${sp.giaBan}"
														pattern="#,###" />
												</h5>
												<div class="star_container">
													<i class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i> <i
														class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>


						</div>

					</div>

				</div>
			</div>
		</div>

	</section>

	<!-- end product section -->


	<!-- info section -->
	<section class="info_section " style="margin-top: 100px">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="info_contact">
						<h5>
							<a href="" class="navbar-brand"> <span> Minics </span>
							</a>
						</h5>
						<p>
							<i class="fa fa-map-marker" aria-hidden="true"></i> Address
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i> +01 1234567890
						</p>
						<p>
							<i class="fa fa-envelope" aria-hidden="true"></i> demo@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="info_info">
						<h5>Information</h5>
						<p>Eligendi sunt, provident, debitis nemo, facilis cupiditate
							velit libero dolorum aperiam enim nulla iste maxime corrupti ad
							illo libero minus.</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="info_links">
						<h5>Useful Link</h5>
						<ul>
							<li><a href="indext.jsp"> Home </a></li>
							<li><a href="about.jsp"> About </a></li>
							<li><a href="product.jsp"> Products </a></li>
							<li><a href="qlhoadon.jsp"> Why Us </a></li>
							<li><a href="testimonial.jsp"> Testimonial </a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div class="info_form ">
						<h5>Newsletter</h5>
						<form action="">
							<input type="email" placeholder="Enter your email">
							<button>Subscribe</button>
						</form>
						<div class="social_box">
							<a href=""> <i class="fa fa-facebook" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-twitter" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-instagram" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-youtube" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- end info_section -->


	<!-- footer section -->
	<footer class="footer_section">
		<div class="container">
			<p>
				&copy; <span id="displayYear"></span> All Rights Reserved By <a
					href="https://html.design/">Free Html Templates</a>
			</p>
		</div>
	</footer>
	<!-- footer section -->

	<!-- jQery -->
	<script src="../../js/jquery-3.4.1.min.js"></script>
	<!-- bootstrap js -->
	<script src="../../js/bootstrap.js"></script>
	<!-- custom js -->
	<script src="../../js/custom.js"></script>


</body>

</html>