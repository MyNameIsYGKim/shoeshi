<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart List</title>
</head>
<body>
	<h1>Cart List</h1>
	<table border="1">
		<thead>
			<tr>
				<th width="100" align="center">거래번호</th>
				<th width="120" align="center">거래일자</th>
				<th width="100" align="center">제품번호</th>
				<th width="100" align="center">제품사이즈</th>
				<th width="100" align="center">거래가격</th>
				<th width="100" align="center">판매자</th>
				<th width="100" align="center">구매자</th>
				<th width="100" align="center">거래상태</th>
			</tr>
			<tr>
				<th colspan="8">
					<hr>
				</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carts}" var="c">
				<tr>
					<!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
					<td align="center">${c.productId }</td>
					<td>${c.clientId }</td>
					<td align="center">${c.cartId }</td>
				</tr>
				<!-- 주의: 위의 </tr> 태그를 이동시켰습니다 -->
			</c:forEach>

		</tbody>
	</table>
</body>
</html>
