<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<style>
.container {
	margin: 0;
}

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

#AdminProductSearchValue {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.formbox {
	padding-bottom: 10px;
}

.searchbtn, .insertbtn, .producteditbtn, .productdeletebtn {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.insertbtn {
	float: right;
}

</style>
</head>
<body>
	<div id="layoutSidenav">
		<div class="container bodymargin">
			<h1 class="adminproducttitle" align="center">물품 관리</h1>
			<!-- partial -->
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
										value="등록" class="insertbtn"
										onmouseover="this.style.background='gray'"
										onmouseout="this.style.background='#FAFAFA'">
								</form>
							</div>
							<div>
								<table class="table tableset">
									<thead>
										<tr>
											<th>번호</th>
											<th>메이커</th>
											<th>상품명</th>
											<th>가격</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty products }">
											<c:forEach items="${products }" var="n">
												<tr>
													<td align="center">${n.productId }</td>
													<td>${n.productMaker }</td>
													<td>${n.productName }</td>
													<td>${n.productPrice }</td>
													<td>
														<button type="button" id="producteditbtn" class="producteditbtn"
															onclick="selectProduct(${n.productId})"
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
											</c:forEach>
										</c:if>
										<c:if test="${empty products }">
											<tr>
												<td colspan="5" align="center">Empty.</td>
											</tr>
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
			<!-- page-body-wrapper ends -->
		</div>
	</div>
	<script type="text/javascript">
	
	function selectProduct(n) {
		document.getElementById("productId").value = n;
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











