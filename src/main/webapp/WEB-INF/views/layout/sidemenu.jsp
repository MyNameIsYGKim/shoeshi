<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<style>

.fontb {
	color: #000;
}

.sidebar123 {
	text-decoration: none;
	text-align: left;
	width: 150px;
	background-color: rgba(255, 255, 255, 0);
	margin-top: 50px;
	z-index: 0;
	border: none;
	font-weight: bold;
}

.menufont {
	color: #ccc;
	
} 

.menutitle {
	color: #000;
}

.sidebar123 h3 {
	font-weight: bold;
}

.sidebar123 h5 {
	margin-top: 30px;
	font-weight: bold;
}

.sidebar123 ul {
	list-style-type: none;
	padding: 0;
}

.sidebar123 li {
	margin-bottom: 10px;
}

.sidebar123 a {
	text-decoration: none;
	padding: 0;
}


/* .sidebar a:hover {
	background-color: #555;
} */

/* Main content styles */
</style>
</head>

<body>
	<div class="sidebar123">
		<ul>
			<li><a href="mypage.do" class="menutitle"><h3>마이페이지</h3></a></li>
			<li><h5 class="menutitle">내 정보</h5></li>
			<li><a href="clienteditform.do" class="menufont">회원정보 수정</a></li>
			<li><a href="paymenteditform.do" class="menufont">결제정보 수정</a></li>
			<li><h5 class="menutitle">나의 쇼핑</h5></li>
			<li><a href="deallist.do" class="menufont">거래내역</a></li>
			<li><a href="bidlist.do" class="menufont">입찰내역</a></li>
			<li><a href="paymentform.do" class="menufont">Cart</a></li>


			<!-- Add more menu items as needed -->
		</ul>
	</div>


	
</body>

</html>
