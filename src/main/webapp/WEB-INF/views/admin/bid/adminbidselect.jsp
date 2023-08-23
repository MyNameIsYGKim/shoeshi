<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 조회</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr align="center">
						<th width="50">입찰순번</th>
						<th width="50">제품번호</th>
						<th width="150">입찰가격</th>
						<th width="50">입찰유형</th>
						<th width="150">유저아이디</th>
						<th width="50">제품사이즈</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center">${n.bidNo }</td>
						<td align="center">${n.productId }</td>
						<td>${n.bidPrice }</td>
						<td align="center">${n.bidType }</td>
						<td>${n.clientId }</td>
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
				<input type="hidden" id="bidNo" name="bidNo" value="${n.bidNo }">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function productUpdate(str){
		if(str == 'E'){
			document.getElementById("frm").action="adminbideditform.do";
		}else{
			document.getElementById("frm").action="adminbiddelete.do";
		}
		document.getElementById("frm").submit();
	}
	</script>
</body>
</html>