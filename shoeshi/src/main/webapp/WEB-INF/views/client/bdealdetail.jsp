<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>케이마켓::대한민국 1등 온라인 쇼핑몰</title>
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
<style>
a {
	text-decoration: none;
}

#product {
	margin: 50px 30px;
}

#product>.complete>.message>h2 {
	font-size: 32px;
	font-weight: bold;
	text-align: left;
	color: #000;
	padding: 0px;
}

#product>.complete>.message>h2>i {
	font-size: 26px;
}

#product>.complete>.message>p {
	font-size: 18px;
	font-weight: bold;
	padding: 10px;
	text-align: center;
}

#product>.complete>article {
	margin-top: 16px;
}

#product>.complete>article>h1 {
	font-weight: bold;
	font-size: 14px;
	color: #111;
	padding: 6px 0;
}

#product>.complete table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	border-top: 2px solid #000;
}

#product>.complete table tr:last-child {
	border-bottom: 1px solid #d3d3d3;
}

#product>.complete table tr>th {
	padding: 12px 0;
	background: #fff;
	color: #383838;
	font-size: 0.95em;
	text-align: center;
	letter-spacing: -0.1em;
}
/* 상품정보 */
#product>.complete>.info>table tr>th:last-child {
	width: 100px;
	padding-right: 10px;
}

#product>.complete>.info table tr>td {
	
}

#product>.complete>.info table tr>td:last-child {
	color: #ff006c;
	font-weight: bold;
	text-align: right;
	padding-right: 10px;
}

#product>.complete>.info table tr>td>article {
	overflow: hidden;
	padding: 6px;
}

#product>.complete>.info table tr>td img {
	float: left;
	width: 80px;
}

#product>.complete>.info table tr>td div {
	float: left;
	margin-left: 10px;
	text-align: left;
}

#product>.complete>.info table tr>td div>p {
	text-align: left;
	color: #777;
	margin-top: 4px;
}

#product>.complete>.info .total>td>table {
	border: none;
}

#product>.complete>.info .total>td>table tr {
	border: none;
}

#product>.complete>.info .total>td>table td {
	text-align: right;
	color: #111;
	background: #fff;
	font-weight: normal;
	border-bottom: none;
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.info>table tr>th:nth-child(1) {
	width: 160px;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>.info>table tr>td:nth-child(1) {
	width: 160px;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>.info table tr>th:nth-child(2) {
	width: auto;
}

#product>.complete>.info table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>.info table tr>th:nth-child(3) {
	width: 100px;
	text-align: center;
}

#product>.complete>.info table tr>td:nth-child(3) {
	width: 100px;
	text-align: center;
}

#product>.complete>.info table tr>th:nth-child(4) {
	width: 100px;
	text-align: right;
	padding-right: 10px;
	vertical-align: top;
}
/* 주문정보 */
#product>.complete>.order table tr>td {
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.order>table tr>td:nth-child(1) {
	width: 160px;
	background: #fff;
}

#product>.complete>.order table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>.order table tr>td:nth-child(3) {
	width: 100px;
	text-align: right;
	vertical-align: top;
}

#product>.complete>.order table tr>td:nth-child(4) {
	width: 100px;
	text-align: right;
	vertical-align: top;
}

#product>.complete>.order table span {
	font-weight: bold;
	color: #000c;
}
/* 배송정보 */
#product>.complete>.delivery table tr>td:nth-child(1) {
	width: 160px;
	background: #fff;
}

#product>.complete>.delivery table tr>td {
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.delivery table tr>td:last-child {
	text-align: right;
}
/* 꼭 알아두세요 */
#product>.complete>.alert {
	width: 100%;
	background-color: #fff;
	padding: 10px;
	padding-left: 24px;
	color: #999;
	box-sizing: border-box;
}

#product>.complete>.alert>h1 {
	margin-left: -12px;
}

#product>.complete>.alert>ul {
	list-style: inherit;
}

#product>.complete>.alert>ul>li {
	line-height: 20px;
}

#product>.complete>.alert>ul>li>span {
	position: relative;
	left: -6px;
}

h1 {
	margin-top: 20px;
}

#wrapper {
	margin-top: 20px;
	height: 100vh;
}
.signup-title {
	text-align: left;
	font-weight: bold;

}
</style>
</head>
<body>
	<div id="wrapper">

		<main id="product">

			<section class="complete">

				<article class="message">
					<h3 class="signup-title">구매 상세</h3>

				</article>
				<!-- 상품정보 -->
				<article class="info">
					<h1>주문번호 ${d.dealNo}</h1>

					<table border="0">
						<tr>
							<th>거래 체결일</th>
							<th>상품정보</th>
							<th>사이즈</th>
							<!-- <th>거래 체결 금액</th> -->
							<th>상태</th>
						</tr>
						<tr>
							<td>${d.dealDate}</td>
							<td><article style="cursor: pointer;"
									onclick="selectProduct(${d.productId})">
									<a href="#"> <img
										src="${d.productimgPath}${d.productimgName1}" alt="1">
									</a>
									<div>
										<p>
											<a href="#">${d.productMaker}</a>
										</p>
										<p>${d.productName}</p>
									</div>
								</article></td>
							<td align="center">${d.productSize }</td>
							<%-- <td><fmt:formatNumber value="${d.dealPrice}" pattern="#,###" />원</td> --%>
							<td align="center">${d.dealState}</td>
						</tr>


					</table>
				</article>
				<!-- 결제정보 -->
				<article class="order">
					<h1>결제정보</h1>
					<table border="0">
						<tr>
							<td>상품가격</td>
							<td></td>
							<td colspan="2"><fmt:formatNumber value="${d.dealPrice}"
									pattern="#,###" />원</td>
						</tr>
						<tr>
							<td>구매 수수료</td>
							<td></td>
							<td colspan="2"><fmt:formatNumber value="0" pattern="#,###" />원</td>
						</tr>
						<tr>
							<td><span>결제 금액</span></td>
							<td></td>
							<td colspan="2"><span><fmt:formatNumber
										value="${d.dealPrice}" pattern="#,###" />원</span></td>
						</tr>
					</table>
				</article>
		
				<!--결제정보 -->
				<article class="order">
					<h1>결제방법</h1>
					<table border="0">
						<tr>
							<td>결제수단</td>
							<td></td>
							<td></td>
							<td>${d.cardCo}</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td colspan="2">${d.cardNum}</td>
						</tr>
						<tr>
							<td>결제일시</td>
							<td></td>
							<td colspan="2">${d.dealDate}</td>
						</tr>
					</table>
				</article>
				<!-- 배송정보 -->
				<article class="delivery">
					<h1>배송정보</h1>
					<table border="0">
						<tr>
							<td>수취인</td>
							<td></td>
							<td></td>
							<td>${d.clientName}</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td></td>
							<td colspan="2"><fmt:formatNumber value="${d.clientTel }"
									pattern="00000000000" /></td>

						</tr>
						<tr>
							<td>배송지 주소</td>
							<td colspan="3">${d.clientAddress }</td>
						</tr>
					</table>
				</article>

				<div class="flex-c-m flex-w w-full p-t-45">
					<a href="bdeallist.do"
						class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
						목록보기 </a>
				</div>

			</section>
		</main>

	</div>
	<div>
		<form id="productselectform" action="productselect.do" method="get">
			<input type="hidden" id="productId" name="productId">
		</form>

	</div>
	<script type="text/javascript">
		function selectProduct(p) {
			document.getElementById("productId").value = p;
			document.getElementById("productselectform").submit();
		}
		
	</script>
</body>
</html>