<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<%@ page pageEncoding="utf-8" language="java"%>
<html>
<head>
<title>Hiển thị</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Nhà Cung Cấp</h1>
		<table class="table table-hover">
			<thead>
				<th>STT</th>
				<th>Mã</th>
				<th>Tên</th>
				<th>Trạng thái</th>
				<th>Thời điểm tạo</th>
				<th>Thời điểm cập nhật</th>
				<th colspan="1">Action</th>
			</thead>
			<tbody>
				<!-- <c:forEach> -->
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<%-- <a type="button" href="/ncc/delete/${ms.id}"
						class="btn btn-danger">Delete</a --%> <a type="button"
						href="/ncc/form-update" class="btn btn-success">Update</a>
				</tr>
				<!-- </c:forEach> -->
			</tbody>
		</table>
		<br>
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
		<br> <a type="button" class="btn btn-success"
			href="/ncc/form-add">Add</a>
	</div>
</body>
</html>