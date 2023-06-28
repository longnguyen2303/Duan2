<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Trang chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
</head>
<link rel="stylesheet" href="../../css/test.css">
<body>


	<header>
		<div class="header_top">
			<div class="container">
				<div class="row">
					<div class="col-3">
						<nav class="navbar">
							<div class="container-fluid">
								<a class="navbar-brand" href="/home"> LOGO</a>
							</div>
						</nav>
					</div>
					<div class="col-4"></div>
					<div class="col-5">
						<nav class="navbar">
							<ul class="nav">

								<!-- 		<li class="nav-item "><a class="nav-link nav-link-1 active"
									aria-current="page" href="indext.jsp">Welcome <span>
											Name: <strong></strong>
									</span>

								</a></li> -->
								<li class="nav-item"><a class="nav-link nav-link-1"
									href="/cart">Giỏ hàng <span
										class="position-absolute badge rounded-pill bg-danger">
									</span></a></li>
								<li class="nav-item"><a class="nav-link nav-link-4"
									href="/login">Login</a></li>
								<li class="nav-item"><a class="nav-link nav-link-4"
									href="/register">Register</a></li>
								<li class="nav-item dropdown" id="navtk"><a
									class="nav-link" type="submit" data-toggle="dropdown"> Tài
										khoản </a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#doimatkhau"
											style="color: blue;">Đổi mật khẩu</a> <a
											class="dropdown-item" href="#home" style="color: blue;">Đăng
											xuất</a>
									</div></li>


							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>

		<div class="header_menu">
			<div class="container">
				<div class="row">
					<div class="col-3"></div>
					<div class="col-6">
						<ul class="nav">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="/home">Trang chủ</a></li>
							<li class="nav-item"><a class="nav-link" href="/sanpham">Sản
									phẩm</a></li>
							<li class="nav-item"><a class="nav-link" href="/about">Giới
									thiệu cửa hàng</a></li>

						</ul>
					</div>
					<div class="col-3"></div>
				</div>

			</div>
		</div>

		<div>
			<div id="demo" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="../../images/slideshow2.png" alt="giaydep" width="100%"
							height="550px">
					</div>
					<div class="carousel-item">
						<img src="../../images/slideshow1.jpg" alt="giaydep" width="100%"
							height="550px">
					</div>
					<div class="carousel-item">
						<img src="../../images/slideshow3.jpg" alt="giaydep" width="100%"
							height="550px">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>
	</header>
	<br>

	<!-- <header>
		<nav class="navbar navbar-expand-sm"
			style="background-color: rgb(48, 48, 226);">
			<div class="navb col-lg-12">
				<ul class="navbar-nav" style="color: black;">
					<li><a class="nav-link" href="#home">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="#gioithieu">Giới
							thiệu</a></li>
					<li class="nav-item"><a class="nav-link" href="#muahang">Mua
							hàng</a></li>
					<li class="nav-item"><a class="nav-link" href="#lichsu">Lịch
							sử mua hàng</a></li>
					<li class="nav-item dropdown"><a class="nav-link"
						type="submit" data-toggle="dropdown"> Quản lý </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#qlsanpham" style="color: blue;">Sản
								phẩm</a> <a class="dropdown-item" href="#qlhang"
								style="color: blue;">Hóa đơn</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#thongke">Thống
							kê</a></li>
					<li class="nav-item"><a class="nav-link" id="dn"
						href="#dangnhap">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" id="dk"
						href="#dangky">Đăng ký</a></li>
					<li class="nav-item dropdown" id="navtk"><a class="nav-link"
						type="submit" data-toggle="dropdown"> Tài khoản </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#doimatkhau" style="color: blue;">Đổi
								mật khẩu</a> <a class="dropdown-item" href="#home"
								style="color: blue;">Đăng xuất</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</header> -->
	<div class="container-fluid">
		<div class="row">


			<%--                main--%>

			<h3 style="font-weight: bold; color: black; margin-bottom: 30px;">TOP
				SẢN PHẨM BÁN CHẠY</h3>
			<div class="banchay col-lg-12">
				<div class="row text-center" style="margin-bottom: 10px;">
					<div class="col-lg-4">
						<div class="card col-lg-12">
							<div style="font-weight: bold; margin: 5px;">Nike Air Force
								1</div>
							<div>
								<img src="../../image/nikeairforce1.jpg" alt="" height="300px"
									width="250px">
							</div>
							<div class="text-danger" style="margin: 15px;">
								<b>Giá : 399.000Đ</b><br> <em>Lượt mua : 2900</em><br>
								<br>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card col-lg-12">
							<div style="font-weight: bold; margin: 5px;">Nike Jordan 2
							</div>
							<div>
								<img src="../../image/nikejordan2.jpg" alt="" height="300px"
									width="250px">
							</div>
							<div class="text-danger" style="margin: 15px;">
								<b>Giá : 499.000Đ</b><br> <em>Lượt mua : 2800</em><br>
								<br>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card col-lg-12">
							<div style="font-weight: bold; margin: 5px;">Puma 1</div>
							<div>
								<img src="../../image/puma1.jpg" alt="" height="300px"
									width="250px">
							</div>
							<div class="text-danger" style="margin: 15px;">
								<b>Giá : 349.000Đ</b><br> <em>Lượt mua : 3000</em><br>
								<br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<h3
				style="font-weight: bold; color: black; margin-top: 30px; margin-bottom: 30px;">SẢN
				PHẨM MỚI</h3>
			<div class="sanphammoi col-lg-12">
				<div class="row text-center" style="margin-bottom: 10px;">
					<div class="col-lg-4">
						<div class="card col-lg-12">
							<div style="font-weight: bold; margin: 5px;">Puma 2</div>
							<div>
								<img src="../../image/puma2.jfif" alt="" height="300px"
									width="250px">
							</div>
							<div class="text-danger" style="margin: 15px;">
								<b>Giá : 399.000Đ</b><br> <br>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card col-lg-12">
							<div style="font-weight: bold; margin: 5px;">Gucci 1</div>
							<div>
								<img src="../../image/gucci1.jpg" alt="" height="300px"
									width="250px">
							</div>
							<div class="text-danger" style="margin: 15px;">
								<b>Giá : 499.000Đ</b><br> <br>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="card col-lg-12">
							<div style="font-weight: bold; margin: 5px;">Adidas 1</div>
							<div>
								<img src="../../image/adidas1.jpg" alt="" height="300px"
									width="250px">
							</div>
							<div class="text-danger" style="margin: 15px;">
								<b>Giá : 349.000Đ</b><br> <br>
							</div>
						</div>
					</div>
				</div>
			</div>

			<%--                footer--%>

			<footer class="col-lg-12"
				style="background-color: grey; color: white; font-weight: bold; text-align: center; padding: 10px; margin-top: 10px;">
				<em>@www.sneakerUyTin.com.vn shop Giày uy tín số 1 Việt
					Nam-SĐT: 0323032003</em>
			</footer>
		</div>
	</div>
	</div>
</body>
</html>