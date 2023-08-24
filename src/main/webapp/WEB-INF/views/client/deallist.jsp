<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.minh {
	margin-top: 50px;
	min-height: 60vh;
}

.styled-table {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #000;
	color: #ffffff;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
	font-weight: bold;
	color: #009879;
}
</style>
</head>
<body>
	<div class="minh">

		<div align="center">
			<div>
				<h1>판매내역</h1>
			</div>
			<div>
				<table class="styled-table">
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

					</thead>
					<tbody>
						<c:forEach items="${deallists }" var="s">
							<!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
							<tr class="active-row">
								<td align="center">${s.dealNo }</td>
								<td>${s.dealDate }</td>
								<td align="center">${s.productId }</td>
								<td align="center">${s.productSize }</td>
								<td><fmt:formatNumber value="${s.dealPrice }" pattern="#,###" />원</td>
								<td>${s.dealSeller }</td>
								<td>${s.dealBuyer }</td>
								<td align="center">${s.dealState }</td>
							</tr>

						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
		<div align="center">
			<div>
				<h1>구매내역</h1>
			</div>
			<div>
				<table class="styled-table">
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

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${deallistb }" var="b">
							<!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
							<tr class="active-row">
								<td align="center">${b.dealNo }</td>
								<td>${b.dealDate }</td>
								<td align="center">${b.productId }</td>
								<td align="center">${b.productSize }</td>
								<td><fmt:formatNumber value="${b.dealPrice }" pattern="#,###" />원</td>
								<td>${b.dealSeller }</td>
								<td>${b.dealBuyer }</td>
								<td align="center">${b.dealState }</td>
							</tr>

						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>