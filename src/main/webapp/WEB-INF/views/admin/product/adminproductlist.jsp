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
			<h1>제품 목록</h1>
		</div>
		<div>
			<form id=frm method="post">
				<select id="key" name="key">
					<option value="id">ID</option>
					<option value="maker">Maker</option>
					<option value="name">Name</option>
				</select>
				<input type="text" id="val" name="val" autofocus>
				<input type="button" onclick="searchList()" value="검색">&nbsp;
			</form>
				<input type="button" onclick="location.href='adminproductform.do'" value="등록">&nbsp;
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="50">번호</th>
							<th width="150">메이커</th>
							<th width="300">제품명</th>
							<th width="150">출시가격</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty products }">
							<c:forEach items="${products }" var="n">
								<tr onmouseover="this.style.background='#F7FE2E'"
									onmouseout="this.style.background='#FFFFFF'"
									onclick="selectProduct(${n.productId })">
									
									<td align="center">${n.productId }</td>
									<td align="center">${n.productMaker }</td>
									<td>${n.productName }</td>
									<td align="center">${n.productPrice }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty products }">
							<tr>
								<td colspan="5" align="center">Empty</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<form id="productfrm" method="post">
				<input type="hidden" id="productId" name="productId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function selectProduct(n){
			document.getElementById("productId").value = n;
			document.getElementById("productfrm").action = "adminproductselect.do";
			document.getElementById("productfrm").submit();
		}
		
		function searchList(){
			// console.log("searchList() 작동됨.시작");
			// ajax를 이용해서 검색결과를 가져오고 화면을 재구성한다.
			let key = document.getElementById("key").value;
			let val = document.getElementById("val").value;
			let payload = "key="+key+"&val="+val;
			let url = "ajaxproductsearch.do";
			
			fetch(url, {
				method: "POST",
				headers:{
					"Content-Type": "application/x-www-form-urlencoded",
				},
				body: payload
			})	.then(response => response.json())
				.then(json => htmlConvert(json));
		}
		
		function htmlConvert(datas){
			// console.log("htmlConvert ~");
			document.querySelector('tbody').remove();
			const tbody = document.createElement('tbody');
			
			// tbody에 data추가
			tbody.innerHTML = datas.map(data => htmlView(data)).join('');
			
			// table에 tbody추가
			document.querySelector('table').appendChild(tbody);
		}
		
		function htmlView(data){
			return `
					<tr onmouseover="this.style.background='#F7FE2E'"
						onmouseout="this.style.background='#FFFFFF'"
						onclick="selectProduct(\${data.productId })">
					
						<td align="center">\${data.productId }</td>
						<td align="center">\${data.productMaker }</td>
						<td>\${data.productName }</td>
						<td align="center">\${data.productPrice }</td>
					</tr>
			`
		}
	</script>
</body>
</html>






