<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	margin-top: 30px;
	margin-bottom: 30px;
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
										제품조회 <i class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
								</div>
							</div>
						</div>
						<div class="buttontest">
							<div>
								<div class="button2"
									OnClick="location.href ='admindealmanage.do'"
									style="cursor: pointer;">
									<h4 class="textstyle">
										거래목록 <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
									</h4>
								</div>
							</div>
						</div>
						<div class="buttontest">
							<div>
								<div class="button3"
									OnClick="location.href ='adminclientmanage.do'"
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
									<h4 style="font-weight: bold; text-align: center;">거래 목록</h4>
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
												</tr>
											</thead>
											<tbody>
												<c:if test="${not empty deals }">
													<c:forEach items="${deals }" var="n" begin="0" end="4">
														<tr>
															<td align="center">${n.dealNo }</td>
															<td align="center">${n.dealDate }</td>
															<td align="center">${n.productId }</td>
															<td align="center">${n.productSize }</td>
															<td>${n.dealBuyer }</td>
															<td>${n.dealSeller }</td>
															<td>${n.dealPrice }</td>
															<td align="center">${n.dealState }</td>
														</tr>
													</c:forEach>
													<tr>
														<td colspan="8" align="center">· · ·</td>
													</tr>
												</c:if>
												<c:if test="${empty deals }">
													<tr>
														<td colspan="8" align="center">Empty.</td>
													</tr>
												</c:if>
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
									<h4 style="font-weight: bold; text-align: center;">회원 목록</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>아이디</th>
													<th>이름</th>
													<th>주소</th>
													<th>전화번호</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${not empty clients }">
													<c:forEach items="${clients }" var="n"  begin="1" end="5">
														<tr>
															<td>"n"</td>
															<td>${n.clientId }</td>
															<td>${n.clientName }</td>
															<td>${n.clientAddress }</td>
															<td>${n.clientTel }</td>
														</tr>
													</c:forEach>
													<tr>
														<td colspan="5" align="center">· · ·</td>
													</tr>
												</c:if>
												<c:if test="${empty clients }">
													<tr>
														<td colspan="5" align="center">Empty.</td>
													</tr>
												</c:if>
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
