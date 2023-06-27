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
									aria-current="page" href="index.html">Welcome <span>
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
	<main>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<img class="card-img-top"
						src="https://ananas.vn/wp-content/uploads/Pro_AV00167_2-500x500.jpeg" />
				</div>
				<div class="col-lg-6">
					<h1>${detail.sanPham.ten}</h1>
					<br />
					<p>Mã sản phẩm: ${detail.id }</p>

					<p>Hãng: ${detail.hang.ten }</p>

					<p>Chất liệu: ${detail.chatLieu.ten }</p>
					<div>
						<span style="font-size: 30px">Giá bán: ${detail.giaBan}</span> <span>VND</span>
					</div>
					<p></p>
					<a href="" class="btn btn-dark">Thêm vào giỏ hàng</a>
				</div>
			</div>

		</div>
		<br> <br>
		<h1>Sản phẩm tương tự</h1>
		<div class="container">
			<div class="row">
				<div class="col-3" th:each="product : ${list}">
					<div class="card" style="width: 18rem;">
						<a th:href="@{'/detail/' + ${product.id}}"> <img
							class="card-img-top" th:src="${product.image}"></a>
						<div class="card-body">
							<h5 class="card-title" th:text="${product.name}"></h5>
							<p style="text-align: center;">
								<span style="text-align: center" class="card-text"
									th:text="${product.price}"></span><span> VND</span>
							</p>
							<p style="text-align: center">
								<a class="btn btn-dark"> Add to cart</a>
							</p>
						</div>


					</div>
				</div>
			</div>
		</div>
	</main>
	<%--                footer--%>

	<footer class="col-lg-12"
		style="background-color: grey; color: white; font-weight: bold; text-align: center; padding: 10px; margin-top: 10px;">
		<em>@www.sneakerUyTin.com.vn shop Giày uy tín số 1 Việt Nam-SĐT:
			0323032003</em>
	</footer>

</body>
</html>