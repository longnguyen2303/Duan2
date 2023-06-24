<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
            crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="font-weight: bold;color: red;margin-left: 350px">Add Chi Tiết Sản Phẩm</h1>
    <form:form action="/ctsp/add" method="post" modelAttribute="ct">
        <div>
            <label class="form-label">Sản phẩm</label>
            <form:select path="sanPham"
                         class="form-select" aria-label="Default select example">
                <form:options items="${listSP}" itemLabel="ten" itemValue="id"/>
            </form:select>
        </div>
        <div>
            <label class="form-label">Hãng</label>
            <form:select path="hang"
                         class="form-select" aria-label="Default select example">
                <form:options items="${listHang}" itemLabel="ten" itemValue="id"/>
            </form:select>
        </div>
        <div>
            <label class="form-label">Kích thước</label>
            <form:select path="kichThuoc"
                         class="form-select" aria-label="Default select example">
                <form:options items="${listKT}" itemLabel="ten" itemValue="id"/>
            </form:select>
        </div>
        <div>
            <label class="form-label">Màu sắc</label>
            <form:select path="mauSac"
                         class="form-select" aria-label="Default select example">
                <form:options items="${listMauSac}" itemValue="id" itemLabel="ten"/>
            </form:select>
        </div>
        <div>
            <label class="form-label">Nhà Cung Cấp</label>
            <form:select path="nhaCungCap"
                         class="form-select" aria-label="Default select example">
                <form:options items="${listNCC}" itemLabel="ten" itemValue="id"/>
            </form:select>
        </div>
        <div>
            <label class="form-label">Chất Liệu</label>
            <form:select path="chatLieu"
                         class="form-select" aria-label="Default select example">
                <form:options items="${listChatLieu}" itemLabel="ten" itemValue="id"/>
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
        <button class="btn btn-success">Thêm</button>
    </form:form>
</div>
</body>
</html>