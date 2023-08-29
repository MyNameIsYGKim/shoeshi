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
			<h1>입찰 목록</h1>
		</div>
		<div>
			<form id=frm method="post">
				<select id="key" name="key">
					<option value="bidNo">순번</option>
					<option value="productId">제품번호</option>
					<option value="bidType">입찰유형</option>
					<option value="clientId">유저아이디</option>
				</select>
				<input type="text" id="val" name="val" autofocus>
				<input type="button" onclick="searchList()" value="검색">&nbsp;
			</form>
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
						<c:if test="${not empty bids }">
							<c:forEach items="${bids }" var="n">
								<tr onmouseover="this.style.background='#F7FE2E'"
									onmouseout="this.style.background='#FFFFFF'"
									onclick="selectBid(${n.bidNo })">
									
									<td align="center">${n.bidNo }</td>
									<td align="center">${n.productId }</td>
									<td>${n.bidPrice }</td>
									<td align="center">${n.bidType }</td>
									<td>${n.clientId }</td>
									<td align="center">${n.productSize }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty bids }">
							<tr>
								<td colspan="6" align="center">Empty</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<form id="bidfrm" method="post">
				<input type="hidden" id="bidNo" name="bidNo">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function selectBid(n){
		document.getElementById("bidNo").value = n;
		document.getElementById("bidfrm").action = "adminbidselect.do";
		document.getElementById("bidfrm").submit();
	}
	
	function searchList(){
		// ajax를 이용해서 검색결과를 가져오고 화면을 재구성한다.
		let key = document.getElementById("key").value;
		let val = document.getElementById("val").value;
		let payload = "key="+key+"&val="+val;
		let url = "ajaxbidsearch.do";
		
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
					onclick="selectBid(\${data.bidNo })">
				
					<td align="center">\${n.bidNo }</td>
					<td align="center">\${n.productId }</td>
					<td>\${n.bidPrice }</td>
					<td align="center">\${n.bidType }</td>
					<td>\${n.clientId }</td>
					<td align="center">\${n.productSize }</td>
				</tr>
		`
	}
	</script>
</body>
</html>



