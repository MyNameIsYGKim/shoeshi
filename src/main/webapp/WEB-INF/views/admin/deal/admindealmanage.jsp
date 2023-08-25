<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
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

#AdminDealSearchValue {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.formbox {
	padding-bottom: 10px;
}

.searchbtn, .dealeditbtn, .dealdeletebtn {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

#dealeditfrm {
	display: inline;
}

#cancelReasonBox {
	border: 1px solid gray;
	border-radius: 3px;
	margin: 0px;
}

</style>

</head>
<body>
	<div id="layoutSidenav">
		<div class="container bodymargin">
			<h1 class="admintitle">거래 관리</h1>
			<!-- partial -->
			<div>
				<div>
					<div>
						<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
							<div class="col-12 grid-margin">
								<div class="card">
									<div class="card-body">
										<div class="formbox" align="center">
											<form id="adminDealForm" method="post" enctype="multipart/form-data">
												<select id="key" name="key">
													<option value="adminDealDate">날짜</option>
													<option value="adminDealProductId">제품번호</option>
													<option value="adminDealBuyer">구매자</option>
													<option value="adminDealSeller">판매자</option>
													<option value="adminDealState">검수결과</option>
												</select>
												<input type="text" id="AdminDealSearchValue" name="AdminDealSearchValue" size="30">
												<input type="button" onclick="searchList()" value="검색"
													class="searchbtn" onmouseover="this.style.background='gray'"
													onmouseout="this.style.background='#FAFAFA'">
											</form>
										</div>
										<div>
											<table class="table tableset">
												<thead>
													<tr>
														<th>거래번호</th>
														<th>거래날짜</th>
														<th>제품번호</th>
														<th>제품사이즈</th>
														<th>구매자</th>
														<th>판매자</th>
														<th>거래상태</th>
														<th>검수상태</th>
														<th>취소사유</th>
														<th>비고</th>
													</tr>
												</thead>
												<!-- 더미 데이터 -->
												<tbody>
													<c:if test="${not empty deals }">
														<c:forEach items="${deals }" var="n">
															<tr>
																<td align="center">${n.dealNo }</td>
																<td align="center">${n.dealDate }</td>
																<td align="center">${n.productId }</td>
																<td align="center">${n.productSize }</td>
																<td>${n.dealBuyer }</td>
																<td>${n.dealSeller }</td>
																<td align="center">${n.dealState }</td>
																<td>
																	<form id="dealeditfrm" method="post">
																		<select id="key" name="key">
																			<option>상태</option>
																			<option value="완료">합격</option>
																			<option value="취소">불합격</option>
																		</select>
																	</form>
																</td>
																<td>
																	<input type="text" id="cancelReasonBox" name="cancelReasonBox" size="30">
																</td>
																<td>
																	<button type="button" class="dealeditbtn"
																		onclick="dealUpdate('E')"
																		onmouseover="this.style.background='gray'"
																		onmouseout="this.style.background='#FAFAFA'">
																		수정</button>
																	<button type="button" class="dealdeletebtn"
																		onclick="dealUpdate('D')"
																		onmouseover="this.style.background='gray'"
																		onmouseout="this.style.background='#FAFAFA'">
																		삭제</button>
																</td>
															</tr>
														</c:forEach>
													</c:if>
													<c:if test="${empty deals }">
														<tr>
															<td colspan="8" align="center">Empty.</td>
														</tr>
													</c:if>
												</tbody>
												<!-- 더미 데이터 끝 -->
											</table>
										</div>
										<div>
											<form id="dealfrm" method="post">
												<input type="hidden" id="dealNo" name="dealNo">
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
	</div>
	<script type="text/javascript">
	
	function selectDeal(n) {
		document.getElementById("dealNo").value = n;
		document.getElementById("dealfrm").submit();
	}
	
	function searchList(){
		let key = document.getElementById("key").value;
		let AdminDealSearchValue = document.getElementById("AdminDealSearchValue").value;
		let payload = "key="+key+"&AdminDealSearchValue="+AdminDealSearchValue;
		let url = "adminajaxdealsearch.do";
		
		fetch(url, {
			method: "POST",
			headers:{
				"Content-Type": "application/x-www-form-urlencoded",
			},
			body: payload
		})	.then(response => response.json())
			.then(json => htmlConvert(json));
		
		console.log(payload);
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
				<tr onclick="selectDeal(\${data.dealNo })">
		
					<td>${data.dealNo }</td>
					<td>${data.dealDate }</td>
					<td>${data.productId }</td>
					<td>${data.productSize }</td>
					<td>${data.dealBuyer }</td>
					<td>${data.dealSeller }</td>
					<td>${data.dealState }</td>
				</tr>
		`
	}
	
	function dealUpdate(str){
		if(str =='E'){
			document.getElementById("dealfrm").action = "admindealeditform.do";
		}else if(str=='D'){
			document.getElementById("dealfrm").action = "admindealdelete.do";
		}document.getElementById("adminDealForm").submit();
	}
	
	</script>
</body>
</html>