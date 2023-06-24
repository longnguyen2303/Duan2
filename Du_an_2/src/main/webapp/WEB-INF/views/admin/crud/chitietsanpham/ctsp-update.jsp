<%@ page pageEncoding="UTF-8" language="java"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<html>
<head>
<title>Update</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Update</h1>
		<form action="/ctsp/update" method="post">
			<div>
				<label class="form-label">Sản phẩm</label> <select
					class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Hãng</label> <select class="form-select"
					aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Kích thước </label> <select
					class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Màu sắc</label> <select
					class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Nhà cung cấp</label> <select
					class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Chất liệu</label> <select
					class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Khuyến mãi</label> <select
					class="form-select" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Số lượng</label> <input
					class="form-control" />

				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Đơn giá</label> <input
					class="form-control" />
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Giá bán </label> <input
					class="form-control" />
				<errors cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Mô tả</label> <input class="form-control" />
				<errors cssStyle="color: red;font-weight: bold" />
			</div>

			<label class="form-label">Trạng Thái</label>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="flexRadioDefault"
					id="flexRadioDefault1"> <label class="form-check-label"
					for="flexRadioDefault1"> Default radio </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="flexRadioDefault"
					id="flexRadioDefault2" checked> <label
					class="form-check-label" for="flexRadioDefault2"> Default
					checked radio </label>
			</div>
			<br>
			<button class="btn btn-success">Update</button>
		</form>
	</div>




</body>
</html>