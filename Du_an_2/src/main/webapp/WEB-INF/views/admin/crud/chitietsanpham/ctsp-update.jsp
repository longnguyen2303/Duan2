<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
	<!-- Basic -->
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<!-- Site Metas -->
	<link rel="icon" href="../../../../../images/background.jpg" type="image/gif"/>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>

	<title>Sneaker</title>


	<!-- bootstrap core css -->
	<link rel="stylesheet" type="text/css" href="../../../../../css/bootstrap.css"/>
	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
			crossorigin="anonymous">
	<!-- fonts style -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- range slider -->

	<!-- font awesome style -->
	<link href="../../../../../css/font-awesome.min.css" rel="stylesheet"/>

	<!-- Custom styles for this template -->
	<link href="../../../../../css/style.css" rel="stylesheet"/>
	<!-- responsive style -->
	<link href="../../../../../css/responsive.css" rel="stylesheet"/>

</head>

<body class="sub_page">

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
						<input type="text" class="form-control" placeholder="Search here...">
						<button class="" type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</from>
					<div class="user_option_box">
						<a href="" class="account-link">
							<i class="fa fa-user" aria-hidden="true"></i>
							<span>
                  Tài Khoản
                </span>
						</a>
						<a href="" class="cart-link">
							<i class="fa fa-shopping-cart" aria-hidden="true"></i>
							<span>
                  Giỏ Hàng
                </span>
						</a>
					</div>
				</div>

			</div>
		</div>
		<div class="header_bottom">
			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg custom_nav-container ">
					<a class="navbar-brand" href="/sneaker/trang-chu">
              <span>
                Sneaker
              </span>
					</a>

					<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
							aria-expanded="false" aria-label="Toggle navigation">
						<span class=""> </span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ">
							<li class="nav-item ">
								<a class="nav-link" href="/sneaker/trang-chu">Trang chủ <span
										class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"> Giới thiệu</a>
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="#">Sản phẩm</a>
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
</div>


<!-- product section -->

<section style="margin-top: 100px">
	<div class="container">
		<h1 style="font-weight: bold;color: red;margin-left: 350px">Cập nhật sản phẩm</h1>
		<form:form action="/ctsp/update/${id}" method="post" modelAttribute="ct" enctype="multipart/form-data">
			<div>
				<label class="form-label">Sản phẩm</label>
				<form:select path="sanPham"
							 class="form-select" aria-label="Default select example">
					<form:options items="${listSP}" itemLabel="ten" itemValue="id" selected="${sanPham == ct.sanPham ? 'selected' : ''}"/>
				</form:select>
			</div>
			<div>
				<label class="form-label">Hãng</label>
				<form:select path="hang"
							 class="form-select" aria-label="Default select example">
					<form:options items="${listHang}" itemLabel="ten" itemValue="id" selected="${hang == ct.hang ? 'selected' : ''}"/>
				</form:select>
			</div>
			<div>
				<label class="form-label">Kích thước</label>
				<form:select path="kichThuoc"
							 class="form-select" aria-label="Default select example">
					<form:options items="${listKT}" itemLabel="ten" itemValue="id" selected="${kichThuoc == ct.kichThuoc ? 'selected' : ''}"/>
				</form:select>
			</div>
			<div>
				<label class="form-label">Màu sắc</label>
				<form:select path="mauSac"
							 class="form-select" aria-label="Default select example">
					<form:options items="${listMauSac}" itemValue="id" itemLabel="ten" selected="${mauSac == ct.mauSac ? 'selected' : ''}"/>
				</form:select>
			</div>
			<div>
				<label class="form-label">Nhà Cung Cấp</label>
				<form:select path="nhaCungCap"
							 class="form-select" aria-label="Default select example">
					<form:options items="${listNCC}" itemLabel="ten" itemValue="id" selected="${nhaCungCap == ct.nhaCungCap ? 'selected' : ''}"/>
				</form:select>
			</div>
			<div>
				<label class="form-label">Chất Liệu</label>
				<form:select path="chatLieu"
							 class="form-select" aria-label="Default select example">
					<form:options items="${listChatLieu}" itemLabel="ten" itemValue="id" selected="${chatLieu == ct.chatLieu ? 'selected' : ''}"/>
				</form:select>
			</div>
			<div>
				<label class="form-label">Số lượng</label>
				<form:input type="number" path="soLuong" class="form-control"/>
				<form:errors path="soLuong" cssStyle="font-weight: bold;color: red"/>
			</div>
			<div>
				<label class="form-label">Đơn giá</label>
				<form:input type="number" path="donGia" class="form-control"/>
				<form:errors path="donGia" cssStyle="font-weight: bold;color: red"/>
			</div>
			<div>
				<label class="form-label">Giá bán</label>
				<form:input type="number" path="giaBan" class="form-control"/>
				<form:errors path="giaBan" cssStyle="font-weight: bold;color: red"/>
			</div>
			<div>
				<label class="form-label">Mô tả</label>
				<form:input path="moTa" class="form-control"/>
				<form:errors path="moTa" cssStyle="font-weight: bold;color: red"/>
			</div>
			<br>
			<div>
				<input type="file" name="anh" id="file" class="inputfile" />
				<label for="file">Chọn ảnh</label>
			</div>
			<button class="btn btn-success">Cập nhật</button>
		</form:form>
	</div>
	<%-- <div>
        <c:if test="${listMau.totalPages - 1 >= 0}">
            <nav style="font-weight: bold;" aria-label="Page navigation example">
                <ul class="pagination">
                    <c:forEach begin="0" end="${ listMau.totalPages -1}"
                        varStatus="loop">
                        <li class="page-item"><a style="color: red"
                            class="page-link"
                            href="/mau-sac/danh-sach?page=${loop.begin + loop.count - 1}">
                                ${loop.begin + loop.count } </a></li>
                    </c:forEach>
                </ul>
            </nav>
        </c:if>
    </div>
    <div>
        <form method="post" action="/mau-sac/import"
            enctype="multipart/form-data">
            <input type="file" name="file" /> <input type="submit"
                value="Import" />
        </form>
    </div> --%>
</section>

<!-- end product section -->


<!-- info section -->
<section class="info_section " style="margin-top: 100px">
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
						Eligendi sunt, provident, debitis nemo, facilis cupiditate velit libero dolorum aperiam enim
						nulla iste maxime corrupti ad illo libero minus.
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
							<a href="indext.jsp">
								Home
							</a>
						</li>
						<li>
							<a href="about.jsp">
								About
							</a>
						</li>
						<li>
							<a href="product.jsp">
								Products
							</a>
						</li>
						<li>
							<a href="why.jsp">
								Why Us
							</a>
						</li>
						<li>
							<a href="testimonial.jsp">
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
<script src="../../../../../js/jquery-3.4.1.min.js"></script>
<!-- bootstrap js -->
<script src="../../../../../js/bootstrap.js"></script>
<!-- custom js -->
<script src="../../../../../js/custom.js"></script>


</body>

</html>