<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>admintranschange</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
<
style>.textstyle {
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
</style>

</head>
<body>
	<div class="container bodymargin">
		<h1 class="admintitle">거래목록</h1>


		<div class="buttonall">
			<div class="buttontest">
				<div>
					<div class="button1" OnClick="'" style="cursor: pointer;">
						<h4 class="textstyle">
							대기 <i class="mdi mdi-chart-line mdi-24px float-right"></i>
						</h4>
					</div>
				</div>
			</div>
			<div class="buttontest">
				<div>
					<div class="button2" OnClick="'" style="cursor: pointer;">
						<h4 class="textstyle">
							합격 <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
						</h4>
					</div>
				</div>
			</div>
			<div class="buttontest">
				<div>
					<div class="button3" OnClick="'" style="cursor: pointer;">
						<h4 class="textstyle">
							불합격 <i class="mdi mdi-diamond mdi-24px float-right"></i>
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