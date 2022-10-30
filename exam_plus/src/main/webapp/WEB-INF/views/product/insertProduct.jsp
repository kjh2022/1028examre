<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<style type="text/css">
		div {
			text-align: center;
			display: inline-block;
		}

		tr{
			margin: 10px, auto;
			padding-right: 80px;
		}
		button{
			margin-top: 15px;
		}
	</style>
</head>

<body>
	<h3>상품 등록</h3>
	<div>
		<form action="insertProduct" method="post" onsubmit="return pNameCheck()">
			<table>
				<tr>
					<th>상품 ID</th>
					<td><input type="number" name="productID" value="${pId}" readonly></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="productName" value=""></td>
				</tr>
				<tr>
					<th>단가</th>
					<td><input type="number" name="productPrice" value=""></td>
				</tr>
				<tr>
					<th>상품 정보</th>
					<td><input type="text" name="productInfo" value=""></td>
				</tr>
				<tr>
					<th>등록 일자</th>
					<td><input type="Date" name="productDate" pattern="yyyy-MM-dd"></td>
				</tr>
				<tr>
					<th>공급 업체</th>
					<td><input type="text" name="company" value=""></td>
				</tr>
				<tr>
					<th>담당자</th>
					<td><input type="text" name="managerId" value=""></td>
				</tr>
			</table>
			<button type="submit">등록</button>
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/productList'">조회</button>
		</form>
	</div>
	<script type="text/javascript">
		// 상품명이 입력되지 않았을때
		function pNameCheck() {
			let pName = $('input[name="productName"]')
			if (pName.val() == '') {
				alert("상품명이 입력되지 않았습니다.");
				pName.focus();
				return false;
			}
			// 상품명 등록되었을때
			alert("상품 등록이 완료되었습니다.");
			return true;
		}
	</script>
</body>

</html>