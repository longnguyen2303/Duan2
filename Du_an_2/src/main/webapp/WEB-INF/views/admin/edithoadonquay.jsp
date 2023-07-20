<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/../plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="/../plugins/tempusdominus-bootstrap-4views/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="/../plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/../dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/../plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="/../plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake" src="dist/img/AdminLTELogo.png"
				alt="AdminLTELogo" height="60" width="60">
		</div>

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="dashboard" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-controlsidebar-slide="true"
					href="#" role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image " style="opacity: .8"> <br>

			</a>
			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<!-- <div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>

				</div> -->

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item "><a href="/admin/dashboard" class="nav-link "> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Home <i class="right fas fa-angle-left"></i>
								</p>
						</a></li>
						<li class="nav-item "><a href="#" class="nav-link "> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Bán hàng tại quầy <i class="right fas fa-angle-left"></i>
								</p>
						</a></li>
						<li class="nav-item "><a href="/admin/dashboard/quanlysp"
							class="nav-link "> <i class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Quản lý sản phẩm <i class="right fas fa-angle-left"></i>
								</p>
						</a></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div>
					<h3>Danh sách sản phẩm</h3>
					<div>
						<a style="margin-left: 89%; margin-bottom: 20px" href="#"
							class="btn btn-primary" data-toggle="modal"
							data-target="#largeModal">Thêm sản phẩm</a>
					</div>
					<div class="card">
						<table class="table">
							<thead>
								<th>Ảnh</th>
								<th>Tên</th>
								<th>Số lượng</th>
								<th>Size</th>
								<th>Màu</th>
								<th colspan="1">Hành động</th>
							</thead>
							<tbody>
								<c:forEach items="${listHDCT}" var="hdct">
									<tr>
										<td><img src="/../images/${hdct.chiTietSP.hinhAnh}"
											height="80px" width="120px"></td>
										<td>${hdct.chiTietSP.sanPham.ten}</td>
										<td>${hdct.soLuong}</td>
										<td>${hdct.chiTietSP.kichThuoc.ten}</td>
										<td>${hdct.chiTietSP.mauSac.ten}</td>
										<td><a type="button" href="#" class="btn btn-danger"><i
												class="fa fa-trash"></i></a> <a type="button" href="#"
											class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<%--    Thêm sản phẩm--%>
					<div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
						aria-labelledby="basicModal" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" id="myModalLabel">Chọn sản phẩm</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div style="margin: 10px; height: 200px; overflow: auto;"
									class="card modal-body">
									<table>
										<thead>
											<tr>
												<th>Ảnh</th>
												<th>Tên</th>
												<th>Giá</th>
												<th>Số Lượng</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listCTSP}" var="ct" varStatus="stt">
												<tr>
													<td><img src="/../images/${ct.hinhAnh}" height="80px"
														width="120px"></td>
													<td><p>${ct.sanPham.ten}</p></td>
													<td><fmt:formatNumber type="currency"
															value="${ct.giaBan}" pattern="#,###" />VNĐ</td>
													<td>${ct.soLuong}</td>
													<td><a href="#" class="btn btn-primary"
														data-toggle="modal" data-target="#sanPhamCT${ct.id}">Chọn</a>

														<div class="modal fade" id="sanPhamCT${ct.id}"
															tabindex="-1" role="dialog" aria-labelledby="basicModal"
															aria-hidden="true">
															<div class="modal-dialog modal-lg">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																	</div>
																	<div class="card modal-body">
																		<div class="d-flex col-lg-12">
																			<div class="card col-lg-6">
																				<img style="margin-top: 50px" class="card-img-top"
																					src="/../images/${ct.hinhAnh}" />
																			</div>
																			<div class="col-lg-6">
																				<h1>${ct.sanPham.ten}</h1>
																				<br />
																				<p>Hãng: ${ct.hang.ten }</p>

																				<p>Chất liệu: ${ct.chatLieu.ten }</p>
																				<div>
																					<span style="font-weight: bold">Giá bán: <fmt:formatNumber
																							type="currency" value="${ct.giaBan}"
																							pattern="#,###" /></span> <span>VNĐ</span>
																				</div>
																				<p>Kho còn: ${ct.soLuong }</p>
																				<form
																					action="/admin/dashboard/edit_hoadon/${idHD}/add/${ct.id}"
																					method="post">
																					<p>
																						<input type="number" name="soluongMua"
																							class="form-control" placeholder="Nhập số lượng">
																					</p>
																					<button style="width: 100%" class="btn btn-primary">Xác
																						nhận</button>
																				</form>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div></td>
												</tr>


											</c:forEach>
										</tbody>
									</table>
								</div>

								<div class="modal-footer">
									<!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Đóng</button>
								</div>
							</div>
						</div>
					</div>


				</div>
			</section>

			<!-- end product section -->
			<section style="height: 380px; margin-top: 10px">
				<div>
					<%--        Thanh toán--%>
					<div style="float: right" class="card col-lg-4">
						<p style="font-weight: bold; font-size: large; padding-top: 10px">Thông
							Tin Thanh Toán</p>
						<hr>
						<label>Tiền hàng: </label><label>1.000.000VNĐ</label><br> <label>Giảm
							giá: </label><label>0VNĐ</label><br> <label>Tổng tiền: </label><label>1.000.000VNĐ</label><br>
						<button class="btn btn-success">Đặt hàng</button>
						<br>
					</div>
				</div>
			</section>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.2.0
			</div>
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="/../plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="/../plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="/../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="/../plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="/../plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="/../plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="/../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="/../plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="/../plugins/moment/moment.min.js"></script>
	<script src="/../plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="/../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="/../plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="/../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/../dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/../dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/../dist/js/pages/dashboard.js"></script>
</body>
</html>
