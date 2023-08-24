<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>adminusermanage</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
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
	<div class="container bodymargin">
		<h1 class="admintitle">유저 목록</h1>
		<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
			<div class="col-12 grid-margin">
				<div class="card">
					<div class="card-body">
						<div>
							<table class="table tableset">
								<thead>
									<tr>
										<th>ID</th>
										<th>PASSWORD</th>
										<th>이름</th>
										<th>주소</th>
										<th>전화번호</th>
										<th>권한</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr>
									<tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
												</select>
											</form>
										</td>
									</tr><tr>
										<td>ID</td>
										<td>PASSWORD</td>
										<td>홍길동</td>
										<td>대구</td>
										<td>010-0000-0000</td>
										<td>
											<form>
												<select name="권한" id="권한">
													<option value="관리자">관리자</option>
													<option value="유저">유저</option>
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
	</div>

</body>
</html>