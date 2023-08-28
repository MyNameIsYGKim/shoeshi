<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>admintranschange</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
.textstyle {
	margin-top: 38px;
	color: white;
	font-weight: bold;
}

.admintitle {
	font-weight: bold;
	margin-top: 50px;
	margin-bottom: 30px;
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

.buttonall {
	display: flex;
	justify-content: center;
}

.buttontest {
	width: 250px;
	display: inline;
}

.button1 {
	height: 50px;
	border-bottom: 4px solid black;
	margin: 5px;
	text-align: center;
}

.button2 {
	height: 50px;
	border-bottom: 4px solid black;
	margin: 5px;
	text-align: center;
}

.button3 {
	height: 50px;
	border-bottom: 4px solid black;
	margin: 3px;
	text-align: center;
	margin: 5px
}

.textstyle {
	margin-top: 10px;
	color: black;
	font-weight: bold;
}

/*상단바 스타일*/
.nodata {
	color: #000;
	font-size: 20px;
	height: 300px;
}

h1 {
	margin: 50px 0 30px;
}

a {
	text-decoration: none;
}

.signup-title {
	text-align: left;
	font-weight: bold;
	margin-bottom: 50px;
}

.numred {
	color: #ff6b6b;
	font-weight: bold;
}

.menublack {
	color: black;
	font-weight: bold;
}

.menulight {
	color: #777;
}

.numberbold {
	font-size: 20px;
	font-weight: bold;
}

.row-sm4 {
	font-size: 14px;
}

.tabblack {
	height: 68px;
	margin: 0 auto;
	border-bottom: 2px solid #000;
}

.dealtab {
	height: 68px;
	border-bottom: 2px solid #d3d3d3;
	margin: 0 auto;
}

.wide100000 {
	width: 100%;
	display: flex;
	align-items: center;
}

.bmar {
	margin-top: 100px;
}
</style>

</head>
<body>
	<div>
		<div style="display: inline-block flex;">

			<h3 class="admintitle">거래목록</h3>
			<div class="minh">



				<div align="center">
					<div class="row wide100000">
						<div class="tabblack col-md-4" onclick=""
							style="cursor: pointer;">
							<div class="col">
								<div class="row-sm8 numberbold ">5</div>
								<div class="menublack row-sm4">대기</div>
							</div>
						</div>
						<div class="col-md-4 tabblack"
							onclick="location.href=''" style="cursor: pointer;">
							<div class="col">
								<div class="row-sm8 numberbold">12</div>
								<div class="row-sm4 menublack">합격</div>
							</div>
						</div>
						<div class="col-md-4 tabblack" onclick=""
							style="cursor: pointer;">
							<div class="col">
								<div class="row-sm8 numberbold">3</div>
								<div class="row-sm4 menublack">불합격</div>
							</div>
						</div>
					</div>
				</div>

				<form id="dealdetailform" action="sdealdetail.do" method="get">
					<input type="hidden" id="dealNo" name="dealNo"> <input
						type="hidden" id="dealType" name="dealType">
				</form>

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
										<th>제품번호</th>
										<th>제품명</th>
										<th>거래금액</th>
										<th>판매자</th>
										<th>구매자</th>
										<th>날짜</th>
										<th>검수</th>
										<th>결과</th>
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
													<option>상태</option>
													<option value="완료">합격</option>
													<option value="취소">불합격</option>
													<!-- 													<option value="보류">보류</option> -->
												</select>
											</form>
										</td>
										<td>완료</td>
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
										<td>완료</td>
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
										<td>완료</td>
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
										<td>완료</td>
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
										<td>완료</td>
									</tr>
									<tr>
										<td>666</td>
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
										<td>완료</td>
									</tr>
									<tr>
										<td>777</td>
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
										<td>완료</td>
									</tr>
									<tr>
										<td>888</td>
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
										<td>완료</td>
									</tr>
									<tr>
										<td>999</td>
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
										<td>완료</td>
									</tr>
									<tr>
										<td>000</td>
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
										<td>완료</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>