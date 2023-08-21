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

.buttonall {
	display: inline-flex;
	width: 100%;
}

.buttontest {
	width: 33.33%;
	display: inline;
	width: 33.33%;
}

.button1 {
	height: 100px;
	background-color: blue;
	border: 1px solid;
	border-radius: 15px;
	margin: 3px;
	text-align: center;
}

.button2 {
	height: 100px;
	background-color: #CC33CC;
	margin: 3px;
	border: 1px solid;
	border-radius: 15px;
	text-align: center;
}

.button3 {
	height: 100px;
	background-color: green;
	margin: 3px;
	border: 1px solid;
	border-radius: 15px;
	text-align: center;
}

.textstyle {
	margin-top: 38px;
	color: white;
	font-weight: bold;
}

.admintitle {
	font-weight: bold;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 40px;
}

.buttonhap {
	width: 50px;
	background-color: green;
	border-radius: 5px;
	border: 1px solid;
	font-weight: bold;
}

.buttonbull {
	width: 50px;
	background-color: red;
	border-radius: 5px;
	border: 1px solid;
	font-weight: bold;
}

.buttonboru {
	width: 50px;
	background-color: yellow;
	border-radius: 5px;
	border: 1px solid;
	font-weight: bold;
}

.tableset {
	text-align: center;
}

.divstyle {
	width: 60%;
	margin: auto;
	margin-bottom: 20px;
	text-align: center; /* 가운데 정렬을 위해 변경 */
}

divstyle2 {
	display: inline-block;
}

.buttonregister {
	background-color: #33FF33;
	border: 1px solid #999999;
	border-radius: 5px;
	font-weight: bold;
	width: 100px;
	margin: 40px 10px 10px 10px;
}

.buttonclear {
	background-color: #ff3333;
	border: 1px solid #999999;
	border-radius: 5px;
	font-weight: bold;
	width: 100px;
	margin: 40px 10px 10px 10px;
}

.textstyle2 {
	color: black;
	font-weight: bold;
	text-align: center;
	margin: 20px 0; /* 상하 여백을 한 번에 지정 */
}

.bodymargin {
	margin-bottom: 10px;
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
			<h1 class="admintitle">관리자 페이지</h1>

			<!-- partial -->
			<div>
				<div>
					<div>
						<div class="buttonall">
							<div class="buttontest">
								<div>
									<div class="button1"
										OnClick="location.href ='adminproductmanage.do'"
										style="cursor: pointer;">
										<h4 class="textstyle">
											물품조회(수정, 삭제) <i
												class="mdi mdi-chart-line mdi-24px float-right"></i>
										</h4>
									</div>
								</div>
							</div>
							<div class="buttontest">
								<div>
									<div class="button2" OnClick="location.href ='admintrans.do'"
										style="cursor: pointer;">
										<h4 class="textstyle">
											거래 목록 <i
												class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
										</h4>
									</div>
								</div>
							</div>
							<div class="buttontest">
								<div>
									<div class="button3"
										OnClick="location.href ='adminusermanage.do'"
										style="cursor: pointer;">
										<h4 class="textstyle">
											회원목록 <i class="mdi mdi-diamond mdi-24px float-right"></i>
										</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
							<div class="col-12 grid-margin">
								<div class="card">
									<div class="card-body">
										<h4 style="font-weight: bold; text-align: center;">물품 검수</h4>
										<div>
											<table class="table tableset">
												<thead>
													<tr>
														<th>상품</th>
														<th>상품명</th>
														<th>판매자</th>
														<th>구매자</th>
														<th>날짜</th>
														<th>검수</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>imege</td>
														<td>product</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>
															<button class="buttonhap">합격</button>
															<button class="buttonbull">불합격</button>
															<button class="buttonboru">보류</button>
														</td>
													</tr>
													<tr>
														<td>imege</td>
														<td>product</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>
															<button class="buttonhap">합격</button>
															<button class="buttonbull">불합격</button>
															<button class="buttonboru">보류</button>
														</td>
													</tr>
													<tr>
														<td>imege</td>
														<td>product</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>
															<button class="buttonhap">합격</button>
															<button class="buttonbull">불합격</button>
															<button class="buttonboru">보류</button>
														</td>
													</tr>
													<tr>
														<td>imege</td>
														<td>product</td>
														<td>판매자</td>
														<td>구매자</td>
														<td>날짜</td>
														<td>
															<button class="buttonhap">합격</button>
															<button class="buttonbull">불합격</button>
															<button class="buttonboru">보류</button>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-7 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<h4 style="font-weight: bold; text-align: center;">최근 가입
											회원</h4>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>#</th>
														<th style="width: 150px;">이름</th>
														<th>ID</th>
														<th style="width: 150px;">가입일자</th>
														<th>비고</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>홍길동</td>
														<td>ID</td>
														<td>yyyy-MM-dd</td>
														<td>비고</td>
													</tr>
													<tr>
														<td>2</td>
														<td>홍길동</td>
														<td>ID</td>
														<td>yyyy-MM-dd</td>
														<td>비고</td>
													</tr>
													<tr>
														<td>3</td>
														<td>홍길동</td>
														<td>ID</td>
														<td>yyyy-MM-dd</td>
														<td>비고</td>
													</tr>
													<tr>
														<td>4</td>
														<td>홍길동</td>
														<td>ID</td>
														<td>yyyy-MM-dd</td>
														<td>비고</td>
													</tr>
													<tr>
														<td>5</td>
														<td>홍길동</td>
														<td>ID</td>
														<td>yyyy-MM-dd</td>
														<td>비고</td>
													</tr>
													<tr>
														<td>6</td>
														<td>홍길동</td>
														<td>ID</td>
														<td>yyyy-MM-dd</td>
														<td>비고</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-5 grid-margin stretch-card">
								<div class="card">
									<div>
										<div class="card-body">
											<h4 class="textstyle2">물품 등록</h4>
											<div>
												<div style="text-align: center; color: #999999">
													<a>이미지 파일을 넣어주세요.</a>
												</div>
												<div class="divstyle">
													<input type="file"
														style="border: 1px solid; color: #cccccc;"
														placeholder="첨부파일">
												</div>
												<div class="divstyle">
													<input type="text"
														style="border: 1px solid; color: #cccccc; width: 282.222px; height: 27.812px;"
														placeholder="상품명">
												</div>
												<div class="divstyle">
													<input type="number"
														style="border: 1px solid; color: #cccccc; width: 282.222px; height: 27.812px;"
														placeholder="출시가">
												</div>
												<div class="divstyle">
													<button class="buttonregister">상품 등록</button>
													<button class="buttonclear">초기화</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- content-wrapper ends -->

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
