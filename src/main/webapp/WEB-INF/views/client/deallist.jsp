<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<div><h1>판매내역</h1></div>
<div>
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
<c:forEach items="${deallists }" var="s"><!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
<tr>
<td align="center">${s.dealNo }</td>
<td>${s.dealDate }</td>
<td align="center">${s.productId }</td>
<td align="center">${s.productSize }</td>
<td>${s.dealPrice }</td>
<td>${s.dealSeller }</td>
<td>${s.dealBuyer }</td>
<td align="center">${s.dealState }</td>
</tr>
<td colspan="8">
<hr>
</td>
</c:forEach>

</tbody>
</table>
</div>
</div>
<div align="center">
<div><h1>구매내역</h1></div>
<div>
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
<c:forEach items="${deallistb }" var="b"><!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
<tr>
<td align="center">${b.dealNo }</td>
<td>${b.dealDate }</td>
<td align="center">${b.productId }</td>
<td align="center">${b.productSize }</td>
<td>${b.dealPrice }</td>
<td>${b.dealSeller }</td>
<td>${b.dealBuyer }</td>
<td align="center">${b.dealState }</td>
</tr>
<td colspan="8">
<hr>
</td>
</c:forEach>

</tbody>
</table>
</div>
</div>
</body>
</html>