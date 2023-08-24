<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>admintrans</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
.admintitle {
	font-weight: bold;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 40px;
}

.tableset {
	text-align: center;
}

.bodymargin {
	margin-bottom: 10px;
}

.buttonstyle {
	background-color: #666666;
	border: 1px solid;
	width: 100px;
	height: 40px;
	float: right;
	margin:;
	border-radius: 5px;
	font-weight: bold;
	color: white;
}

.custom-button {
	background-color: #ff6b6b;
	color: white;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
	border-radius: 5px;
}

#AdminProductSearchValue {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.searchbtn{
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}
</style>

</head>
<body>
	<div class="container bodymargin">
		<h1 class="admintitle">제품조회</h1>
		<!-- partial -->
		<div>
			<div>
				<div>
					<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<div class="formbox" align="center">
										<form id="frm" method="post" enctype="multipart/form-data">
											<select id="key" name="key">
												<option value="adminProductId">ID</option>
												<option value="adminProductMaker">Maker</option>
												<option value="adminProductName">Name</option>
											</select>
											<input type="text" id="AdminProductSearchValue" name="AdminProductSearchValue" size="30">
											<input type="button" onclick="searchList()" value="검색"
												class="searchbtn" onmouseover="this.style.background='gray'"
												onmouseout="this.style.background='#FAFAFA'">
											<input type="button" onclick="location.href='adminproductform.do'"
												value="등록" class="buttonstyle">
										</form>
									</div>
									<div>
										<table class="table tableset">
											<thead>
												<tr>
													<th>제품 번호</th>
													<th>제조사</th>
													<th>제품명</th>
													<th>출시가</th>
													<th>비고</th>
												</tr>
											</thead>
											<!-- 더미 데이터 -->
											<tbody>
												<c:if test="${not empty products }">
													<c:forEach items="${products }" var="n">
														<tr>
															<td align="center">${n.productId }</td>
															<td>${n.productMaker }</td>
															<td>${n.productName }</td>
															<td>${n.productPrice }</td>
															<td class="button-container"
																onclick="selectProduct(${n.productId })">
																<div>
																	<jsp:include page="adminproducteditpopup.jsp" />
																</div>
															</td>
														</tr>
													</c:forEach>
												</c:if>
											</tbody>
											<!-- 더미 데이터 끝 -->
										</table>
									</div>
									<br>
									<div>
										<form id="productfrm" action="adminproducteditform.do" method="post">
											<input type="hidden" id="productId" name="productId">
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- main-panel ends -->
				</div>
				<!-- page-body-wrapper ends -->
			</div>
		</div>
	</div>
	<script>
		function show() {
			document.querySelector(".background").className = "background show";
		}

		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#show").addEventListener('click', show);
		document.querySelector("#close").addEventListener('click', close);
		
		function selectProduct(n) {
			document.getElementById("productId").value = n;
			document.getElementById("productfrm").action = "adminproductselect.do";
			document.getElementById("productfrm").submit();
		}
		
		function searchList(){
			let key = document.getElementById("key").value;
			let AdminProductSearchValue = document.getElementById("AdminProductSearchValue").value;
			let payload = "key="+key+"&AdminProductSearchValue="+AdminProductSearchValue;
			let url = "adminajaxproductsearch.do";
			
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
			document.querySelector('tbody').remove();
			const tbody = document.createElement('tbody');
			// tbody에 data추가
			tbody.innerHTML = datas.map(data => htmlView(data)).join('');
			// table에 tbody추가
			document.querySelector('table').appendChild(tbody);
		}
		
		function htmlView(data){
			return `
					<tr onclick="selectProduct(\${data.productId })">
			
						<td>\${data.productId }</td>
						<td>\${data.productMaker }</td>
						<td>\${data.productName }</td>
						<td>\${data.productPrice }</td>
						<td>
						<button type="button" class="producteditbtn"
							onclick="productUpdate('E')"
							onmouseover="this.style.background='gray'"
							onmouseout="this.style.background='#FAFAFA'">
							수정</button>
						<button type="button" class="productdeletebtn"
							onclick="productUpdate('D')"
							onmouseover="this.style.background='gray'"
							onmouseout="this.style.background='#FAFAFA'">
							삭제</button>
						</td>
					</tr>
			`
		}
	</script>
</body>
</html>