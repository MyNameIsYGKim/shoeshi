<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

.buttonall {
	display: flex;
	justify-content: center;
}

.buttontest {
	width: 250px;
	margin-left: 30px;
	margin-right: 30px;
	display: inline;
}

.button1, .button2, .button3 {
	height: 50px;
	border-bottom: 4px solid black;
	margin: 10px;
	text-align: center;
}

.textstyle {
	margin-top: 20px;
	color: black;
	font-weight: bold;
}

.admintitle {
	font-weight: bold;
	text-align: center;
	margin-top: 30px;
	margin-bottom: 30px;
}

.tableset {
	text-align: center;
}

.bodymargin {
	margin-bottom: 10px;
}

#AdminDealSearchValue3 {
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
						<div class="buttonall">
							<div class="buttontest">
								<div>
									<div class="button1"
										OnClick="location.href ='admindealmanage.do'"
										style="cursor: pointer;">
										<h4 class="textstyle">
											대기( ${fn:length(states1) } ) <i class="mdi mdi-chart-line mdi-24px float-right"></i>
										</h4>
									</div>
								</div>
							</div>
							<div class="buttontest">
								<div>
									<div class="button2"
										OnClick="location.href ='admindealmanage2.do'"
										style="cursor: pointer;">
										<h4 class="textstyle">
											합격( ${fn:length(states2) } ) <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
										</h4>
									</div>
								</div>
							</div>
							<div class="buttontest">
								<div>
									<div class="button3"
										OnClick="location.href ='admindealmanage3.do'"
										style="cursor: pointer;">
										<h4 class="textstyle">
											불합격( ${fn:length(states3) } ) <i class="mdi mdi-diamond mdi-24px float-right"></i>
										</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
							<div class="col-12 grid-margin">
								<div class="card">
									<div class="card-body">
										<div class="formbox" align="center">
											<form id="adminDealForm" method="post" enctype="multipart/form-data">
												<select id="key3" name="key3">
													<option value="adminDealDate">날짜</option>
													<option value="adminDealProductId">제품번호</option>
													<option value="adminDealBuyer">구매자</option>
													<option value="adminDealSeller">판매자</option>
													<option value="adminDealState">검수결과</option>
												</select>
												<input type="text" id="AdminDealSearchValue3" name="AdminDealSearchValue3" 
													size="30" style="padding: 5px;">
												<input type="button" onclick="searchList()" value="검색"
													class="btn btn-primary">
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
														<th>거래가격</th>
														<th>거래상태</th>
														<th>관리</th>
													</tr>
												</thead>
												<!-- 더미 데이터 -->
												<tbody>
													<c:if test="${not empty deals3 }">
														<c:forEach items="${deals3 }" var="n" begin="0" end="14">
															<tr style="line-height: 35px;">
																<td align="center">${n.dealNo }</td>
																<td align="center">${n.dealDate }</td>
																<td align="center">${n.productId }</td>
																<td align="center">${n.productSize }</td>
																<td>${n.dealBuyer }</td>
																<td>${n.dealSeller }</td>
																<td>${n.dealPrice }</td>
																<td align="center">${n.dealState }</td>
																<td>
																	<button type="button" class="btn btn-primary pull-right"
																		onclick="selectDeal(${n.dealNo})">
																		관리</button>
																</td>
															</tr>
														</c:forEach>
														<tr>
															<td colspan="9" align="center">· · ·</td>
														</tr>
													</c:if>
													<c:if test="${empty deals3 }">
														<tr>
															<td colspan="9" align="center">Empty.</td>
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
		document.getElementById("dealfrm").action = "admindealselect.do";
		document.getElementById("dealfrm").submit();
	}
	
	function searchList(){
		let key3 = document.getElementById("key3").value;
		let AdminDealSearchValue3 = document.getElementById("AdminDealSearchValue3").value;
		let payload = "key3="+key3+"&AdminDealSearchValue3="+AdminDealSearchValue3;
		let url = "adminajaxdealsearch3.do";
		
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
				<tr style="line-height: 35px;">
				<td align="center">\${data.dealNo }</td>
				<td align="center">\${data.dealDate }</td>
				<td align="center">\${data.productId }</td>
				<td align="center">\${data.productSize }</td>
				<td>\${data.dealBuyer }</td>
				<td>\${data.dealSeller }</td>
				<td>\${data.dealPrice }</td>
				<td align="center">\${data.dealState }</td>
				<td>
					<button type="button" class="btn btn-primary pull-right"
						onclick="selectDeal(\${data.dealNo})">
						관리</button>
				</td>
				</tr>
		`
	}
	</script>
</body>
</html>