<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<link href="css/styles.css" rel="stylesheet" />
<title>Admin</title>
<style>
.buttonall {
	display: flex;
	justify-content: center;
}

.buttontest {
	width: 33.33%;
	display: inline;
}

.button1 {
	height: 50px;
	border-bottom: 4px solid black;
	margin: 10px;
	text-align: center;
}

.button2 {
	height: 50px;
	border-bottom: 4px solid black;
	margin: 10px;
	text-align: center;
}

.button3 {
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
	margin-top: 20px;
	margin-bottom: 40px;
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
										물품조회 <i class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
								</div>
							</div>
						</div>
						<div class="buttontest">
							<div>
								<div class="button2"
									OnClick="location.href ='admintranschange.do'"
									style="cursor: pointer;">
									<h4 class="textstyle">
										거래 목록 <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
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
									<h4 style="font-weight: bold; text-align: center;">제품 검수</h4>
									<div>
										<table class="table tableset">
											<thead>
												<tr>
													<th>제품번호</th>
													<th>제품명</th>
													<th>거래금액</th>
													<th>판매자</th>
													<th>구매자</th>
													<th>날짜</th>
													<th>검수</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>111</td>
													<td>product</td>
													<td>100,000원</td>
													<td>판매자</td>
													<td>구매자</td>
													<td>날짜</td>
													<td>
														<form>
															<select name="검수" id="lang">
																<option value="준비중">준비중</option>
																<option value="합격">합격</option>
																<option value="보류">보류</option>
																<option value="불합격">불합격</option>
															</select>
														</form>
													</td>
												</tr>
												<tr>
													<td>222</td>
													<td>product</td>
													<td>100,000원</td>
													<td>판매자</td>
													<td>구매자</td>
													<td>날짜</td>
													<td>
														<form>
															<select name="검수" id="lang">
																<option value="준비중">준비중</option>
																<option value="합격">합격</option>
																<option value="보류">보류</option>
																<option value="불합격">불합격</option>
															</select>
														</form>
													</td>
												</tr>
												<tr>
													<td>333</td>
													<td>product</td>
													<td>100,000원</td>
													<td>판매자</td>
													<td>구매자</td>
													<td>날짜</td>
													<td>
														<form>
															<select name="검수" id="lang">
																<option value="준비중">준비중</option>
																<option value="합격">합격</option>
																<option value="보류">보류</option>
																<option value="불합격">불합격</option>
															</select>
														</form>
													</td>
												</tr>
												<tr>
													<td>444</td>
													<td>product</td>
													<td>100,000원</td>
													<td>판매자</td>
													<td>구매자</td>
													<td>날짜</td>
													<td>
														<form>
															<select name="검수" id="lang">
																<option value="준비중">준비중</option>
																<option value="합격">합격</option>
																<option value="보류">보류</option>
																<option value="불합격">불합격</option>
															</select>
														</form>
													</td>
												</tr>
												<tr>
													<td>555</td>
													<td>product</td>
													<td>100,000원</td>
													<td>판매자</td>
													<td>구매자</td>
													<td>날짜</td>
													<td>
														<form>
															<select name="검수" id="lang">
																<option value="준비중">준비중</option>
																<option value="합격">합격</option>
																<option value="보류">보류</option>
																<option value="불합격">불합격</option>
															</select>
														</form>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="text-align: center;">
						<div class=>
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
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
