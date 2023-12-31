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

#product>.complete>.info table tr>#won {
		color: #ff006c;
	font-weight: bold;
	text-align: left;
	padding-right: 10px;
}

#product>.complete>.info table tr>#editprice {
	color: #ff006c;
	font-weight: bold;
	text-align: right;
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
	width: auto;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>.info>table tr>td:nth-child(1) {
	width: auto;
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
					<h3 class="signup-title">구매 입찰 중</h3>

				</article>
				<!-- 상품정보 -->
				<article class="info">
					<h1></h1>

					<table border="0">
						<tr>
							<th>상품정보</th>
							<th>사이즈</th>
							<th>구매 희망가</th>
						</tr>
						<tr>
							<td><article style="cursor: pointer;"
									onclick="selectProduct(${b.productId})">
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
							<td id="editsize" align="center" contenteditable="false">${b.productSize }</td>
							<td id="editprice" contenteditable="false">${b.bidPrice}</td><td id="won">원</td>
						</tr>


					</table>
				</article>
				<!-- 결제정보 -->
				

				<!--결제정보 -->
				<article class="order">
					<h1>결제방법</h1>
					<table border="0">
						<tr>
							<td>결제수단</td>
							<td></td>
							<td></td>
							<td>${b.cardCo}</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td colspan="2">${b.cardNum}</td>
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
							<td>${b.clientName}</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td></td>
							<td colspan="2"><fmt:formatNumber value="${b.clientTel }"
									pattern="00000000000" /></td>

						</tr>
						<tr>
							<td>배송지 주소</td>
							<td colspan="3">${b.clientAddress }</td>
						</tr>
					</table>
				</article>

				<div class="flex-c-m flex-w w-full p-t-45">
					<a href="buybidlist.do"
						class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
						목록보기 </a>
						<form id="editform" action="" method="post">
						<button id="edit" class="flex-c-m stext-101 cl10 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04" onclick="edit()">수정</button>
						<button id="save" class="flex-c-m stext-101 cl10 size-104 bg1 bor1 hov-btn1 p-lr-15 trans-04" style="display:none;" onclick="save()">저장</button>
					<!-- 	<button id="cancel" class="flex-c-m stext-101 cl10 size-104 bg5 bor1 hov-btn1 p-lr-15 trans-04" style="background: fuchsia;red; display:none;">취소</button> -->
					<input type="hidden" id="bidno" name="bidno" value="${b.bidNo }">
					</form>
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
	$(function(){
		alert($('#editprice:eq(0)').html());
	})
		function edit(){
		editables = document.querySelectorAll('#editsize, #editprice')
		${editprice2}
		$('#edit').hide();
		$('#save').show();
/* 		$('#cancel').show(); */
		editables[0].contentEditable = 'true';
		editables[1].contentEditable = 'true';
	}
 	function save(){
 		/* $('#editsize:eq(0)').html()="" */
		editables[0].contentEditable = 'false';
		editables[1].contentEditable = 'false';
		
	} 
	
	
		function selectProduct(p) {
			document.getElementById("productId").value = p;
			document.getElementById("productselectform").submit();
		}
		
	</script>
</body>
</html>