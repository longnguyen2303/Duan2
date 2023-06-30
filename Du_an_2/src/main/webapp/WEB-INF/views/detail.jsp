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
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<!-- Site Metas -->
	<link rel="icon" href="../../images/background.jpg" type="image/gif" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="author" content="" />

	<title>Sneaker</title>


	<!-- bootstrap core css -->
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css" />

	<!-- fonts style -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet"> <!-- range slider -->

	<!-- font awesome style -->
	<link href="../../css/font-awesome.min.css" rel="stylesheet" />

	<!-- Custom styles for this template -->
	<link href="../../css/style.css" rel="stylesheet" />
	<!-- responsive style -->
	<link href="../../css/responsive.css" rel="stylesheet" />

</head>

<body>

<div class="hero_area">
	<!-- header section strats -->
	<header class="header_section">
		<div class="header_top">
			<div class="container-fluid">
				<div class="top_nav_container">
					<div class="contact_nav">
						<a href="">
							<i class="fa fa-phone" aria-hidden="true"></i>
							<span>
                  Call : 0363338257
                </span>
						</a>
						<a href="">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<span>
                  Email : sneaker247@gmail.com
                </span>
						</a>
					</div>
					<from class="search_form">
						<input type="text" class="form-control" placeholder="Tìm kiếm...">
						<button class="" type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</from>
					<div class="user_option_box">
						<a href="" class="account-link">
							<i class="fa fa-user" aria-hidden="true"></i>
							<span>
                  Tài khoản
                </span>
						</a>
						<a href="" class="cart-link">
							<i class="fa fa-shopping-cart" aria-hidden="true"></i>
							<span>
                  Giỏ hàng
                </span>
						</a>
					</div>
				</div>

			</div>
		</div>
		<div class="header_bottom">
			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg custom_nav-container ">
					<a class="navbar-brand" href="indext.jsp">
              <span>
                Sneaker
              </span>
					</a>

					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class=""> </span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ">
							<li class="nav-item active">
								<a class="nav-link" href="/sneaker/trang-chu">Trang chủ <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"> Giới thiệu</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/sneaker/productfilter">Sản phẩm</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/sneaker/product">Quản lý</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">Thống kê</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- end header section -->
	<!-- slider section -->
	<section class="slider_section ">
		<div id="customCarousel1" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container ">
						<div class="row">
							<div class="col-md-6">
								<div class="detail-box">
									<h1>
										Chào mừng đến với cửa hàng của chúng tôi
									</h1>
									<p>
										Chúng tôi luôn mang đến cho bạn những điều mới mẻ , tinh tế và phong cách nhất.
									</p>
									<a href="">
										Đọc thêm
									</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="img-box">
									<img style="height: 350px" src="../../images/slideshow3.jpg" alt="">
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
									<h1>
										Chào mừng đến với cửa hàng của chúng tôi
									</h1>
									<p>
										Chúng tôi luôn mang đến cho bạn những điều mới mẻ , tinh tế và phong cách nhất.
									</p>
									<a href="">
										Đọc thêm
									</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="img-box">
									<img style="height: 350px" src="../../images/slideshow2.png" alt="">
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
									<h1>
										Chào mừng đến với cửa hàng của chúng tôi
									</h1>
									<p>
										Chúng tôi luôn mang đến cho bạn những điều mới mẻ , tinh tế và phong cách nhất.
									</p>
									<a href="">
										Đọc thêm
									</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="img-box">
									<img style="height: 350px" src="../../images/slideshow1.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel_btn_box">
				<a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</section>
	<!-- end slider section -->
</div>

<!-- Nội dung -->
<!-- product section -->

<section class="product_section layout_padding">
	<main>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<img class="card-img-top"
						 src="../../images/${detail.hinhAnh}"/>
				</div>
				<div class="col-lg-6">
					<h1>${detail.sanPham.ten}</h1>
					<br/>
					<p>Mã sản phẩm: ${detail.sanPham.ma }</p>

					<p>Hãng: ${detail.hang.ten }</p>

					<p>Chất liệu: ${detail.chatLieu.ten }</p>
					<div>
						<span style="font-size: 30px">Giá bán: <fmt:formatNumber type="currency" value="${detail.giaBan}" pattern="#,###"/></span> <span>VNĐ</span>
					</div>
					<p>Kho còn: ${detail.soLuong }</p>
					<p></p>
					<a href="" class="btn btn-dark">Thêm vào giỏ hàng</a>
				</div>
			</div>

		</div>
	</main>
</section>

<!-- end product section -->

<!-- about section -->

<section class="about_section">
	<div class="container-fluid  ">
		<div class="row">
			<div class="col-md-5 ml-auto">
				<div class="detail-box pr-md-3">
					<div class="heading_container">
						<h2>
							We Provide Best For You
						</h2>
					</div>
					<p>
						Totam architecto rem beatae veniam, cum officiis adipisci soluta perspiciatis ipsa, expedita maiores quae accusantium. Animi veniam aperiam, necessitatibus mollitia ipsum id optio ipsa odio ab facilis sit labore officia!
						Repellat expedita, deserunt eum soluta rem culpa. Aut, necessitatibus cumque. Voluptas consequuntur vitae aperiam animi sint earum, ex unde cupiditate, molestias dolore quos quas possimus eveniet facilis magnam? Vero, dicta.
					</p>
					<a href="">
						Read More
					</a>
				</div>
			</div>
			<div class="col-md-6 px-0">
				<div class="img-box">
					<img src="images/about-img.jpg" alt="">
				</div>
			</div>
		</div>
	</div>
</section>

<!-- end about section -->

<!-- why us section -->

<section class="why_us_section layout_padding">
	<div class="container">
		<div class="heading_container heading_center">
			<h2>
				Why Choose Us
			</h2>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="box ">
					<div class="img-box">
						<img src="images/w1.png" alt="">
					</div>
					<div class="detail-box">
						<h5>
							Fast Delivery
						</h5>
						<p>
							variations of passages of Lorem Ipsum available
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box ">
					<div class="img-box">
						<img src="images/w2.png" alt="">
					</div>
					<div class="detail-box">
						<h5>
							Free Shiping
						</h5>
						<p>
							variations of passages of Lorem Ipsum available
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box ">
					<div class="img-box">
						<img src="images/w3.png" alt="">
					</div>
					<div class="detail-box">
						<h5>
							Best Quality
						</h5>
						<p>
							variations of passages of Lorem Ipsum available
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- end why us section -->


<!-- client section -->

<section class="client_section layout_padding-bottom">
	<div class="container">
		<div class="heading_container heading_center">
			<h2>
				What Says Our Customers
			</h2>
		</div>
	</div>
	<div class="client_container ">
		<div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container">
						<div class="box">
							<div class="detail-box">
								<p>
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</p>
								<p>
									It is a long established fact that a reader will be distracted by the readable content of a page
									when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
									distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
									long established fact that a reader will be distracted by the readable content of a page when
									looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
									distribution of letters, as opposed to using 'Content here, content here', making it look
								</p>
							</div>
							<div class="client-id">
								<div class="img-box">
									<img src="images/client.jpg" alt="">
								</div>
								<div class="name">
									<h5>
										James Dew
									</h5>
									<h6>
										Photographer
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container">
						<div class="box">
							<div class="detail-box">
								<p>
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</p>
								<p>
									It is a long established fact that a reader will be distracted by the readable content of a page
									when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
									distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
									long established fact that a reader will be distracted by the readable content of a page when
									looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
									distribution of letters, as opposed to using 'Content here, content here', making it look
								</p>
							</div>
							<div class="client-id">
								<div class="img-box">
									<img src="images/client.jpg" alt="">
								</div>
								<div class="name">
									<h5>
										James Dew
									</h5>
									<h6>
										Photographer
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container">
						<div class="box">
							<div class="detail-box">
								<p>
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</p>
								<p>
									It is a long established fact that a reader will be distracted by the readable content of a page
									when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
									distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
									long established fact that a reader will be distracted by the readable content of a page when
									looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
									distribution of letters, as opposed to using 'Content here, content here', making it look
								</p>
							</div>
							<div class="client-id">
								<div class="img-box">
									<img src="images/client.jpg" alt="">
								</div>
								<div class="name">
									<h5>
										James Dew
									</h5>
									<h6>
										Photographer
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel_btn-box">
				<a class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
            <span>
              <i class="fa fa-angle-left" aria-hidden="true"></i>
            </span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
            <span>
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</section>
<!-- end client section -->

<!-- info section -->
<section class="info_section ">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="info_contact">
					<h5>
						<a href="" class="navbar-brand">
                <span>
                  Minics
                </span>
						</a>
					</h5>
					<p>
						<i class="fa fa-map-marker" aria-hidden="true"></i>
						Address
					</p>
					<p>
						<i class="fa fa-phone" aria-hidden="true"></i>
						+01 1234567890
					</p>
					<p>
						<i class="fa fa-envelope" aria-hidden="true"></i>
						demo@gmail.com
					</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="info_info">
					<h5>
						Information
					</h5>
					<p>
						Eligendi sunt, provident, debitis nemo, facilis cupiditate velit libero dolorum aperiam enim nulla iste maxime corrupti ad illo libero minus.
					</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="info_links">
					<h5>
						Useful Link
					</h5>
					<ul>
						<li>
							<a href="index.html">
								Home
							</a>
						</li>
						<li>
							<a href="about.html">
								About
							</a>
						</li>
						<li>
							<a href="product.html">
								Products
							</a>
						</li>
						<li>
							<a href="why.html">
								Why Us
							</a>
						</li>
						<li>
							<a href="testimonial.html">
								Testimonial
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-3">
				<div class="info_form ">
					<h5>
						Newsletter
					</h5>
					<form action="">
						<input type="email" placeholder="Enter your email">
						<button>
							Subscribe
						</button>
					</form>
					<div class="social_box">
						<a href="">
							<i class="fa fa-facebook" aria-hidden="true"></i>
						</a>
						<a href="">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
						<a href="">
							<i class="fa fa-instagram" aria-hidden="true"></i>
						</a>
						<a href="">
							<i class="fa fa-youtube" aria-hidden="true"></i>
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
			&copy; <span id="displayYear"></span> All Rights Reserved By
			<a href="https://html.design/">Free Html Templates</a>
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