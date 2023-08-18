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
<div><h1>거래내역</h1></div>
<div>
<table border="1">
<thead>
<tr>
<th width="100" align="center">거래번호</th>
<th width="200" align="center">거래일자</th>
<th width="150" align="center">거래가격</th>
<th width="100" align="center">판매자</th>
<th width="100" align="center">구매자</th>
<th width="100" align="center">거래상태</th>
</tr>
<tr>
<th colspan="6">
<hr>
</th>
</tr>
</thead>
<tbody>
<c:forEach items="${deallist }" var="d"><!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
<c:if test="${d.dealSeller == loginid || d.dealBuyer==loginid}">
<tr>
<td align="center">${d.dealNo }</td>
<td>${d.dealDate }</td>
<td>${d.dealPrice }</td>
<td>${d.dealSeller }</td>
<td>${d.dealBuyer }</td>
<td align="center">${d.dealState }</td>
</tr>
<td colspan="6">
<hr>
</td>
</c:if>
</c:forEach>

</tbody>
</table>
</div>
</div>
</body>
</html>