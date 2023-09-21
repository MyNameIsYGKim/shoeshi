<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Sidebar styles */
.fontb {
	color: black;
}

.sidebar123 {
	text-align: left;
	width: 150px;
	background-color: rgba(255, 255, 255, 0);
	color: black;
	position: fixed;
	
	top: 0;
	left: 0;
	height: 100%;
	overflow-x: hidden;
	z-index: 0;
	padding-top: 100px;
	margin-left: 123px;
	border: none;
}

.sidebar123 ul {
	list-style-type: none;
	padding: 0;
}

.sidebar123 li {
	margin-bottom: 10px;
}

.sidebar123 a {
	color: black;
	text-decoration: none;
	display: block;
	padding: 10px;
}

/* .sidebar a:hover {
	background-color: #555;
} */

/* Main content styles */
.main-content {
	margin-left: 300px; /* Adjust this value to match the sidebar width */
	margin-right: 123px;
	margin-top: 50px; /* Adjust as needed */
	margin-bottom: 50px; /* Adjust as needed */
	padding: 20px;
	margin-top: 50px;
}
</style>
</head>

<body>
	<div>
		<ul>
			<li><a href="mypage.do"><h4>마이페이지</h4></a></li>
			<li><a href="clienteditform.do">회원정보 수정</a></li>
			<li><a href="paymenteditform.do">거래정보 수정</a></li>
			<li><a href="deallist.do">거래내역</a></li>
			<li><a href="bidlist.do">입찰내역</a></li>
			<li><a href="#">Cart</a></li>

			<!-- Add more menu items as needed -->
		</ul>
	</div>



</body>

</html>
