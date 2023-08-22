<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>test</h1>
		
			<div>
			<table border="1">
				<thead>
					<tr>
						<th width="70">제품번호</th>
						<th width="300">제조사</th>
						<th width="100">제품명</th>
						<th width="100">출시가격</th>
						<th width="300">제품경로</th>
						<th width="70">제품이미지</th>
					</tr>
				</thead>
				<tbody>
					
						<c:forEach items="${tests}" var="t">
							<tr onmouseover="this.style.background='#fcecae'"
								onmouseout="this.style.background='#FFFFFF'"
								onclick="selectNotice(${t.productId})">
								<td align="center">${t.productId}</td>
								<td align="center">${t.productMaker}</td>
								<td align="center">${t.productName}</td>
								<td align="center">${t.productPrice}</td>
								<td align="center">${t.productimgPath}</td>
								<td align="center">${t.productimgName1}</td>
							</tr>
						</c:forEach>
					
					
				</tbody>


			</table>
		</div>
	</div>
</body>
</html>