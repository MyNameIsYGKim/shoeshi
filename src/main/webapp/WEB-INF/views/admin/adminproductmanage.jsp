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
<!--
물품 css -->.product-list {
	margin: 0;
}

.products h3 {
	font-size: 24px;
	color: #545454;
	margin-top: 60px;
	margin-bottom: 60px;
	text-align: center;
}

.product {
	display: block;
	width: 225px;
	text-align: center;
	text-decoration: none;
	color: black;
	float: left;
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom: 30px;
}

.admintitle {
	font-weight: bold;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 40px;
}

</style>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="../layout/sidebar.jsp" />
		<div>
			<div class="container bodymargin">
				<div>
					<button id="productupload"
						OnClick="location.href ='adminproductupload.do'">물품 등록</button>
				</div>
				<h1 class="admintitle">물품 관리</h1>
				<div class="product-list">
					<a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a> <a href="#" class="product"> <img
						src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg"
						width="225" height="225px">
						<div class="product-name">Sunglasses</div>
						<div class="product-price">49,000</div>
					</a>




					<jsp:include page="../layout/sidebar.jsp" />
				</div>
			</div>
		</div>
	</div>

	<!-- main-panel ends -->

	<!-- page-body-wrapper ends -->

</body>
</html>