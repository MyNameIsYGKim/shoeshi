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

#product>.complete>form>article>h1 {
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
#product>.complete>form>.info>table tr>th:last-child {
	width: 100px;
	padding-right: 10px;
}

#product>.complete>form>.info table tr>td {
	
}

#product>.complete>form>.info table tr>td:last-child {
	color: #ff006c;
	font-weight: bold;
	text-align: right;
	padding-right: 10px;
}

#product>.complete>form>.info table tr>td>article {
	overflow: hidden;
	padding: 6px;
}

#product>.complete>form>.info table tr>td img {
	float: left;
	width: 80px;
}

#product>.complete>form>.info table tr>td div {
	float: left;
	margin-left: 10px;
	text-align: left;
}

#product>.complete>form>.info table tr>td div>p {
	text-align: left;
	color: #777;
	margin-top: 4px;
}

#product>.complete>form>.info .total>td>table {
	border: none;
}

#product>.complete>form>.info .total>td>table tr {
	border: none;
}

#product>.complete>form>.info .total>td>table td {
	text-align: right;
	color: #111;
	background: #fff;
	font-weight: normal;
	border-bottom: none;
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>form>.info>table tr>th:nth-child(1) {
	width: auto;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>form>.info>table tr>td:nth-child(1) {
	width: auto;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>form>.info table tr>th:nth-child(2) {
	width: auto;
}

#product>.complete>form>.info table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>form>.info table tr>th:nth-child(3) {
	width: 100px;
	text-align: center;
}

#product>.complete>form>.info table tr>td:nth-child(3) {
	width: 100px;
	text-align: center;
}

#product>.complete>form>.info table tr>th:nth-child(4) {
	width: 100px;
	text-align: right;
	padding-right: 10px;
	vertical-align: top;
}
/* 주문정보 */
#product>.complete>form>.order table tr>td {
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>form>.order>table tr>td:nth-child(1) {
	width: 160px;
	background: #fff;
}

#product>.complete>form>.order table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>form>.order table tr>td:nth-child(3) {
	width: 100px;
	text-align: right;
	vertical-align: top;
}

#product>.complete>form>.order table tr>td:nth-child(4) {
	width: 100px;
	text-align: right;
	vertical-align: top;
}

#product>.complete>form>.order table span {
	font-weight: bold;
	color: #000c;
}
/* 배송정보 */
#product>.complete>form>.delivery table tr>td:nth-child(1) {
	width: 160px;
	background: #fff;
}

#product>.complete>form>.delivery table tr>td {
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>form>.delivery table tr>td:last-child {
	text-align: right;
}
/* 꼭 알아두세요 */
#product>.complete>form>.alert {
	width: 100%;
	background-color: #fff;
	padding: 10px;
	padding-left: 24px;
	color: #999;
	box-sizing: border-box;
}

#product>.complete>form>.alert>h1 {
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

#bankinfo {
	display: none;
}

#cardinfo {
	display: none;
}
</style>
</head>
<body>
	<div id="wrapper">

		<main id="product">
			<section class="complete">
				<form action="payment.do" name="form" id="form"
					onsubmit="return formCheck()">
					<input id="bidNo" name="bidNo" hidden="" value="${b.bidNo}">

					<article class="message">
						<h3 class="signup-title" id="head">주문결제</h3>

					</article>
					<!-- 상품정보 -->
					<article class="info">
						<h1></h1>

						<table border="0">
							<tr>
								<th>상품정보</th>
								<th>사이즈</th>
								<th id="total">결제금액</th>
							</tr>
							<tr>
								<td><article style="cursor: pointer;"
										onclick="selectProduct(${p.productId})">
										<a href="#"> <img
											src="${p.productimgPath}${p.productimgName1}" alt="1">
										</a>
										<div>
											<p>
												<a href="#">${p.productMaker}</a>
											</p>
											<p>${p.productName}</p>
										</div>
									</article></td>

								<td align="center">${b.productSize }</td>
								<td><fmt:formatNumber value="${b.bidPrice}" pattern="#,###" />원</td>
							</tr>


						</table>
					</article>
					<!-- 결제정보 -->
					<article class="order" id="bankinfo">
						<h1 id="accountinfo">계좌정보</h1>
						<table border="0">
							<tr>
								<td>은행</td>
								<td></td>
								<td></td>
								<td>${pay.bankName}</td>
							</tr>
							<tr>
								<td>예금주</td>
								<td></td>
								<td></td>
								<td>${c.clientName}</td>
							</tr>
							<tr>
								<td>계좌번호</td>
								<td></td>
								<td></td>
								<td>${pay.bankAccount}</td>
							</tr>
						</table>
					</article>

					<!--결제정보 -->
					<article class="order" id="cardinfo">
						<h1 id="dealinfo">결제정보</h1>
						<table border="0">
							<tr>
								<td id="howdeal">결제수단</td>
								<td></td>
								<td></td>
								<td>${pay.cardCo}</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td colspan="2">${pay.cardNum}</td>
							</tr>

						</table>
					</article>
					<!-- 배송정보 -->
					<article class="delivery">
						<h1 id="sendInfo">배송정보</h1>
						<table border="0">
							<tr>
								<td>수취인</td>
								<td></td>
								<td></td>
								<td>${c.clientName}</td>

							</tr>
							<tr>
								<td>연락처</td>
								<td></td>
								<td colspan="2"><fmt:formatNumber value="${c.clientTel }"
										pattern="00000000000" /></td>


							</tr>
							<tr>
								<td>주소</td>
								<td colspan="3">${c.clientAddress }</td>
							</tr>
						</table>
					</article>
					<article class="payment">
						<h1>결제방법</h1>
						<div>

							<p>
								<label> <input type="radio" name="payment" value="신용카드" id="cardradio">신용카드
									결제
								</label>

							</p>

							<p>
								<label> <input type="radio" name="payment" value="계좌이체" id="bankradio">실시간
									계좌이체
								</label>
							</p>
						</div>


					</article>
					<div class="flex-c-m flex-w w-full p-t-45">
						<input id="submitBt" name="submitBt" type="submit" value=""
							class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">

					</div>
				</form>
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
		
		$(function() {
			if ("${b.bidType}" == "BUY") {
				document.getElementById("submitBt").value = "판매하기";
				$('#head').text("판매정보");
				$('#sendInfo').text("반송정보");
				$('#who').text("판매자");
				$('#total').text("전체판매금액");
				$('.payment').hide();
				$('#bankinfo').show();
				$('#accountinfo').text("정산계좌 정보");				
				$('#cardinfo').show();
				$('#dealinfo').text("패널티 결제정보");
			} else {
				document.getElementById("submitBt").value = "결제하기";
				$('clientBankName').hide();
				$('.clientBankAccount').hide();
			}
		})

		$(document).ready(function () {
			// 여기서 부터
			$("input[id=cardradio]:radio").click(function() {
				$('#cardinfo').css({
				"display":"block"
				});
				$('#bankinfo').css({
				"display":"none"
				});
				}); // 여기까지 반복
			$("input[id=bankradio]:radio").click(function() {
				$('#bankinfo').css({
				"display":"block"
				});
				$('#cardinfo').css({
				"display":"none"
				});
				});
			//a2~a3 반복
			});
		function formCheck() {
			if ("${b.bidType}" != "BUY") {
				if ($("input[type=radio][name=payment]:checked").is(":checked")) {
					return true;
				}else{
				alert("결제방법을 선택하시오.")
				return false;
				}
				return true;
			}
		}
		
	</script>
</body>
</html>