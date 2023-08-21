<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.page_wrap {
	text-align:center;
	font-size:0;
 }
.page_nation {
	display:inline-block;
}
.page_nation .none {
	display:none;
}
.page_nation a {
	display:block;
	margin:0 3px;
	float:left;
	border:1px solid #e6e6e6;
	width:28px;
	height:28px;
	line-height:28px;
	text-align:center;
	background-color:#fff;
	font-size:13px;
	color:#999999;
	text-decoration:none;
}
.page_nation .arrow {
	border:1px solid #ccc;
}
.page_nation .pprev {
	background: #f8f8f8 url('./css/arrow/page_pprev.png') no-repeat center center;
	margin-left: 0;
}

.page_nation .prev {
	background: #f8f8f8 url('./css/arrow/page_prev.png') no-repeat center center;
	margin-right: 7px;
}

.page_nation .next {
	background: #f8f8f8 url('./css/arrow/page_next.png') no-repeat center center;
	margin-left: 7px;
}

.page_nation .nnext {
	background: #f8f8f8 url('./css/arrow/page_nnext.png') no-repeat center center;
	margin-right: 0;
}
.page_nation a.active {
	background-color:#42454c;
	color:#fff;
	border:1px solid #42454c;
}
</style>

</head>
<body>
	<div id="layoutSidenav">
		<div>
			<nav class="sb-sidenav accordion sb-sidenav-dark">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="adminhome.do">
							<div>Admin</div>
						</a>
						<div class="sb-sidenav-menu-heading">물품관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminproductmanage.do">물품조회(수정, 삭제)</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading">거래관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="admintrans.do">거래목록</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="admintranschange.do">거래상태 변경</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading">회원관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminusermanage.do">회원목록</a>
						</nav>
					</div>
				</div>
			</nav>
		</div>
		<div class="container bodymargin">
			<h1 class="admintitle">거래 목록</h1>
			<!-- partial -->
			<div>
				<div>
					<div>
						<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
							<div class="col-12 grid-margin">
								<div class="card">
									<div class="card-body">
										<h4 style="font-weight: bold; text-align: center;">거래 전체 목록</h4>
										<div>
											<table class="table tableset">
												<thead>
													<tr>
														<th>상품</th>
														<th>상품명</th>
														<th>거래금액</th>
														<th>판매자</th>
														<th>구매자</th>
														<th>거래날짜</th>
														<th>검수결과</th>
														<th>비고</th>
													</tr>
												</thead>
												<!-- 더미 데이터 -->
												<tbody>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>합격</td>
														<th>완료</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>불합격</td>
														<th>취소</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>보류</td>
														<th>보류</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>완료</th>
													</tr>
																										<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>완료</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>취소</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>보류</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>완료</th>
													</tr>
																										<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>완료</th>
													</tr>
													<tr>
														<td>imege</td>
														<td>product name</td>
														<td>100,000원</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>최종 검수 결과</td>
														<th>취소</th>
													</tr>
												</tbody>
												<!-- 더미 데이터 끝 -->
											</table>
											<div class="page_wrap">
  	<div class="page_nation">
      <a class="arrow pprev" href="#"></a>
      <a class="arrow prev" href="#"></a>
      <a href="#" class="active">1</a>
      <a href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#">6</a>
      <a href="#">7</a>
      <a href="#">8</a>
      <a href="#">9</a>
      <a href="#">10</a>
      <a class="arrow next" href="#"></a>
      <a class="arrow nnext" href="#"></a>
   </div>
</div>
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
</body>
</html>