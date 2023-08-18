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
		<div>
			<table border="1">
				<thead>
					<tr>
						<th width="50">번호</th>
						<th width="100">메이커</th>
						<th width="150">제품명</th>
						<th width="100">출시가격</th>
						<th width="100">사이즈</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center">${n.productId }</td>
						<td align="center">${n.productMaker }</td>
						<td>${n.productName }</td>
						<td align="center">${n.productPrice }</td>
						<td align="center">${n.productSize }</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<div align="center">
			<button type="button" onclick="productUpdate('E')">수정</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="productUpdate('D')">삭제</button>
		</div>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="productId" name="productId" value="${n.productId }">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function productUpdate(str){
			if(str == 'E'){
				document.getElementById("frm").action="producteditform.do";
			}else{
				document.getElementById("frm").action="productdelete.do";
			}
			document.getElementById("frm").submit();
		}
	</script>
</body>
</html>