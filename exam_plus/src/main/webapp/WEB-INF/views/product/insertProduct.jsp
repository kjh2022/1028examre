<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 등록</h3>
<form action="insertProduct">
	<div>상품 ID<input type="number" name="productID" value="${pId}"></div>	
	<div>이름<input type="text" name="productName"></div>
	<div>단가<input type="number" name="productPrice"></div>
	<div>상품 정보<input type="text" name="productInfo"></div>
	<div>등록일자<input type="Date" name="productDate"></div>
	<div>공급 업체<input type="text" name="company"></div>
	<div>담당자<input type="text" name="managerId"></div>
	<button type="submit">등록</button>
</form>
</body>
</html>