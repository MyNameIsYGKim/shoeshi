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
<div><h1>판매입찰</h1></div>
<div>
<table border="1">
<thead>
<tr>
<th width="120" align="center">제품번호</th>
<th width="100" align="center">입찰가격</th>
<th width="100" align="center">사이즈</th>
</tr>
<tr>
<th colspan="3">
<hr>
</th>
</tr>
</thead>
<tbody>
<c:forEach items="${bidlists }" var="s"><!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
<tr>
<td>${s.productId }</td>
<td align="center">${s.bidPrice }</td>
<td>${s.productSize }</td>
</tr>
<td colspan="6">
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
<th width="120" align="center">제품번호</th>
<th width="100" align="center">입찰가격</th>
<th width="100" align="center">사이즈</th>
</tr>
<tr>
<th colspan="3">
<hr>
</th>
</tr>
</thead>
<tbody>
<c:forEach items="${bidlistb }" var="b"><!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
<tr>
<td>${b.productId }</td>
<td align="center">${b.bidPrice }</td>
<td>${b.productSize }</td>
</tr>
<td colspan="3">
<hr>
</td>
</c:forEach>

</tbody>
</table>
</div>
</div>

</body>
</html>