<%@ page pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<form:form action="/kich-thuoc/add" method="post" modelAttribute="kichthuoc">
			<div>
				<label class="form-label">Mã</label>
				<form:input class="form-control" path="ma" />
				<%--        <c:if test="${thongbao != ''}">--%>
				<%--            <p style="color: red;font-weight: bold">${thongbao}</p>--%>
				<%--        </c:if>--%>
				<form:errors path="ma" cssStyle="color: red;font-weight: bold" />
			</div>
			<div>
				<label class="form-label">Tên</label>
				<form:input class="form-control" path="ten" />
				<form:errors path="ten" cssStyle="color: red;font-weight: bold" />
			</div>
			<br>
			<button class="btn btn-success">Thêm</button>
		</form:form>
	</div>
</body>
</html>