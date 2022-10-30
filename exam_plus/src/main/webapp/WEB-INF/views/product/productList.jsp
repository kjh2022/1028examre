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
	h3{
		text-align : center;
		margin-bottom : 20px;
	}
	div{
		text-align : center;
		display: inline-block;
	}
	table, tr, th, td{
		border : 1px solid black;
	}
</style>
</head>
<body>
	<h3>상품 조회/수정</h3>
	<div>
		<table>
			<tr>
				<th style="width:80px">상품 ID</th>
				<th style="width:120px">이름</th>
				<th style="width:80px">단가</th>
				<th style="width:80px">담당자</th>
				<th style="width:150px">등록일자</th>
				<th style="width:100px">공급업체</th>
			</tr>
			<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.productId}</td>
				<td>${list.productName}</td>
				<td>
					<fmt:formatNumber value="${list.productPrice}" pattern="#,###" />
				</td>
				<td>
				<c:if test="${list.managerId eq 'E201'}">
					김사원
				</c:if>
				<c:if test="${list.managerId eq 'E202'}">
					이대리
				</c:if>
				</td>
				<td>
					<fmt:formatDate value="${list.productDate}" pattern="yyyy/MM/dd"/>
				</td>
				<td>${list.company}</td>
			</tr>		
			</c:forEach>
		</table>
	</div>
</body>
</html>