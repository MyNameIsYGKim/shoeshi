<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://kit.fontawesome.com/20962f3e4b.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="./css/product.css">

<style type="text/css">
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

.minh {
	margin: 50px 30px;
	min-height: 60vh;
}

.styled-table {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #000;
	color: #ffffff;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
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

.styled-table tbody tr.active-row {
	font-weight: bold;
	color: #009879;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
}

table tr {
	border-bottom: 1px solid #d3d3d3;
}

table th {
	padding: 12px 0;
	background: #fff;
	color: #383838;
	font-size: 0.95em;
	text-align: center;
	letter-spacing: -0.1em;
}

table .empty {
	display: none;
}

table td {
	text-align: center;
}

table th:nth-child(3) {
	text-align: right;
	padding-right: 10px;
}

table td:nth-child(3) {
	text-align: right;
	padding-right: 10px;
}

table tr>td>input {
	
}

table td>article {
	padding: 6px;
	overflow: hidden;
}

table td>article>a {
	float: left;
	display: inline-block;
}

table td>article>a>img {
	width: 80px;
}

table td>article>div {
	float: left;
	margin-left: 10px;
}

table td>article>div>span {
	text-align: left;
}

table td>article>div>p {
	text-align: left;
	color: #777;
	margin-top: 4px;
}

.signup-title {
	text-align: left;
	font-weight: bold;
	margin-bottom: 50px
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

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}
</style>
</head>
<body>

	<div class="minh">




		<div align="center">
			<div>
				<h3 class="signup-title">판매내역</h3>
			</div>
			<div>
				<div class="row wide100000">
					<div class="tabblack col-md-4" onclick="selectBidType('SELL')" style="cursor: pointer;">
						<div class="col">
							<div class="row-sm8 numberbold numred">${count.bidCount}</div>
							<div class="menublack row-sm4">판매입찰</div>
						</div>
					</div>
					<div class="col-md-4 dealtab" onclick="location.href='sdeallist.do'"
						style="cursor: pointer;">
						<div class="col">
							<div class="row-sm8 numberbold">${count.dealCount}</div>
							<div class="row-sm4 menulight">진행중</div>
						</div>
					</div>
					<div class="col-md-4 dealtab" onclick="buybidlist.do"
						style="cursor: pointer;">
						<div class="col">
							<div class="row-sm8 numberbold">${count.finishCount}</div>
							<div class="row-sm4 menulight">완료</div>
						</div>
					</div>
				</div>
				<table border="0">
					<thead>
						<tr>

							<th>상품정보</th>
							<th>사이즈</th>
							<th>판매 희망가</th>

						</tr>
					</thead>
					<tbody>
						<c:if test="${empty bidList}">
							<tr class="nodata">
								<td colspan="3">판매 입찰내역이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty bidList}">
							<c:forEach items="${bidList}" var="b">
								<!-- 멤버즈의 한 행을 엠으로 읽겠다 -->
								<tr style="cursor: pointer;"
									onclick="bidDetail('${b.bidNo}','${b.bidType}')">

									<td><article>
											<a href="#"> <img
												src="${b.productimgPath}${b.productimgName1}" alt="1">
											</a>
											<div>
												<p>
													<a href="#">${b.productMaker}</a>
												</p>
												<p>${b.productName}</p>
											</div>
										</article></td>
									<td align="center">${b.productSize}</td>
									<td><fmt:formatNumber value="${b.bidPrice}"
											pattern="#,###" />원</td>
								</tr>

							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div>
		<form id="biddetailform" action="biddetail.do" method="get">
			<input type="hidden" id="bidNo" name="bidNo"> <input
				type="hidden" id="bidType" name="bidType">
		</form>
		
		<form id="bidTypeForm" method="post" action="bidlist.do">
			<input type="hidden" id="bidType" name="bidType">
		</form>

	</div>
	<script type="text/javascript">
	function bidDetail(bidNo, bidType) {
		
		document.getElementById("bidNo").value = bidNo;
		document.getElementById("bidType").value = bidType;
		document.getElementById("biddetailform").submit();
	}
	function selectBidType(str) {

		document.getElementById("bidType").value = str;
		document.getElementById("bidTypeForm").submit();
	}
	
	</script>
</body>
</html>