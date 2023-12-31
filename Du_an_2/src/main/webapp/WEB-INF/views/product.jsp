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
    <link rel="icon" href="../../images/background.jpg" type="image/gif"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Sneaker</title>


    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap.css"/>

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <!-- range slider -->

    <!-- font awesome style -->
    <link href="../../css/font-awesome.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="../../css/style.css" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="../../css/responsive.css" rel="stylesheet"/>

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
                                <a class="nav-link" href="/sneaker/productfilter">Sản phẩm</a>
                            </li>
								<!--   <li class="nav-item">
                                <a class="nav-link" href="/sneaker/product">Quản lý</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="/sneaker/hoa-don">Bán hàng
                            </a></li> -->
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
    <main>
        <div style="float: right;margin-bottom: 20px">
            <form action="/sneaker/product/search" method="get" class="search_form">
                <input type="text" name="inputsearch" value="${inputsearch}" class="form-control"
                       placeholder="Tìm kiếm sản phẩm...">
                <button style="background-color: #006cfa" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </button>
            </form>
        </div>
        <table class="table table-hover">
            <thead>
            <th>STT</th>
            <th>Image</th>
            <th>Tên Sản Phẩm</th>
            <th>Hãng</th>
            <th>Kích thước</th>
            <th>Chất liệu</th>
            <th>Số lượng</th>
            <th>Giá bán</th>
            <th colspan="1">Action</th>
            </thead>
            <tbody>
            <c:forEach items="${listCTSP.content}" var="ct" varStatus="stt">
                <tr>
                    <td>${stt.index + 1}</td>
                    <td><img src="../../images/${ct.hinhAnh}" height="100px" width="150px"></td>
                    <td><p>${ct.sanPham.ten} ${ct.mauSac.ten}</p></td>
                    <td>${ct.hang.ten}</td>
                    <td>${ct.kichThuoc.ten}</td>
                    <td>${ct.chatLieu.ten}</td>
                    <td>${ct.soLuong}</td>
                    <td><fmt:formatNumber type="currency" value="${ct.giaBan}" pattern="#,###"/>VNĐ</td>
                    <td>
                        <a type="button" href="/ctsp/delete/${ct.id}"
                           class="btn btn-danger">Hủy</a>
                        <a type="button"
                           href="/ctsp/form-update/${ct.id}"
                           class="btn btn-primary">Cập nhật</a>
                    </td>
                        <%--                    <td>--%>
                        <%--                        <a type="button"--%>
                        <%--                           href="/ctsp/form-update"--%>
                        <%--                           class="btn btn-success">Cập nhật</a>--%>
                        <%--                    </td>--%>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <br>
        <div style="float: right">
            <a type="button" class="btn btn-success"
               href="/ctsp/form-add">Thêm sản phẩm</a>
        </div>
    </main>
    <div>
        <c:if test="${listCTSP.totalPages - 1 >= 0}">
            <nav style="font-weight: bold;" aria-label="Page navigation example">
                <ul class="pagination">
                    <c:if test="${inputsearch != null || inputsearch != ''}">
                        <c:forEach begin="0" end="${ listCTSP.totalPages -1}"
                                   varStatus="loop">
                            <li class="page-item">
                                <a style="color: red"
                                   class="page-link"
                                   href="/sneaker/product/search?inputsearch=${inputsearch}&page=${loop.begin + loop.count - 1}">
                                        ${loop.begin + loop.count } </a>
                            </li>
                        </c:forEach>
                    </c:if>
                </ul>
            </nav>
        </c:if>
    </div>
    <%--    <div>--%>
    <%--        <form method="post" action="/mau-sac/import"--%>
    <%--            enctype="multipart/form-data">--%>
    <%--            <input type="file" name="file" /> <input type="submit"--%>
    <%--                value="Import" />--%>
    <%--        </form>--%>
    <%--    </div>--%>
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
                            <a href="qlhoadon.jsp">
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
<script src="../../js/jquery-3.4.1.min.js"></script>
<!-- bootstrap js -->
<script src="../../js/bootstrap.js"></script>
<!-- custom js -->
<script src="../../js/custom.js"></script>


</body>

</html>