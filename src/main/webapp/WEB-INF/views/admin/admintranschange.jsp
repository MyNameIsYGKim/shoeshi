<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.bodymargin {
	margin-bottom: 10px;
}

.page_wrap {
	text-align: center;
	font-size: 0;
}

.page_nation {
	display: inline-block;
}

.page_nation .none {
	display: none;
}

.page_nation a {
	display: block;
	margin: 0 3px;
	float: left;
	border: 1px solid #e6e6e6;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	background-color: #fff;
	font-size: 13px;
	color: #999999;
	text-decoration: none;
}

.page_nation .arrow {
	border: 1px solid #ccc;
}

.page_nation .pprev {
	background: #f8f8f8 url('./css/arrow/page_pprev.png') no-repeat center
		center;
	margin-left: 0;
}

.page_nation .prev {
	background: #f8f8f8 url('./css/arrow/page_prev.png') no-repeat center
		center;
	margin-right: 7px;
}

.page_nation .next {
	background: #f8f8f8 url('./css/arrow/page_next.png') no-repeat center
		center;
	margin-left: 7px;
}

.page_nation .nnext {
	background: #f8f8f8 url('./css/arrow/page_nnext.png') no-repeat center
		center;
	margin-right: 0;
}

.page_nation a.active {
	background-color: #42454c;
	color: #fff;
	border: 1px solid #42454c;
}
</style>

</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="../layout/sidebar.jsp" />
		<div class="container bodymargin">
			<h1 class="admintitle">거래 상태 변경(검수)</h1>
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
											<th>거래금액</th>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
											<td>100,000원</td>
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
								<jsp:include page="../layout/sidebar.jsp" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>