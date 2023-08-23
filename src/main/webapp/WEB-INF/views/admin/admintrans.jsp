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
</style>

</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="../layout/sidebar.jsp" />
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
										<h4 style="font-weight: bold; text-align: center;">거래 전체
											목록</h4>
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