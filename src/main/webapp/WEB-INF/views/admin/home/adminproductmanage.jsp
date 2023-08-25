<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>admintrans</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
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

.buttonstyle {
	background-color: #666666;
	border: 1px solid;
	width: 100px;
	height: 40px;
	float: right;
	margin:;
	border-radius: 5px;
	font-weight: bold;
	color: white;
}

.custom-button {
	background-color: #ff6b6b;
	color: white;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
	border-radius: 5px;
}
</style>

</head>
<body>
	<div class="container bodymargin">
		<h1 class="admintitle">제품조회</h1>
		<!-- partial -->
		<div>
			<div>
				<div>
					<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 style="font-weight: bold; text-align: center;">제품 내역</h4>
									<div>
										<table class="table tableset">
											<thead>
												<tr>
													<th>제품 번호</th>
													<th>제품명</th>
													<th>제조사</th>
													<th>출시가</th>
													<th>수정,삭제</th>
												</tr>
											</thead>
											<!-- 더미 데이터 -->
											<tbody>
												<tr>
													<td>111</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>222</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>333</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>444</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>555</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>666</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>777</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>888</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>999</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
												<tr>
													<td>000</td>
													<td>product name</td>
													<td>NIKE</td>
													<td>100,000원</td>
													<td class="button-container">
														<div>
															<jsp:include page="adminproducteditpopup.jsp" />
														</div>
													</td>
												</tr>
											</tbody>
											<!-- 더미 데이터 끝 -->
										</table>
									</div>
									<button class="buttonstyle"
										onclick="location.href='adminproductupload.do'">제품 추가</button>
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
	<script>
		function show() {
			document.querySelector(".background").className = "background show";
		}

		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#show").addEventListener('click', show);
		document.querySelector("#close").addEventListener('click', close);
	</script>
</body>
</html>