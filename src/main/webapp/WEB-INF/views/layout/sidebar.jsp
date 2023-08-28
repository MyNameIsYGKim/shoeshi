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
}

.menufont {
	color: #aaa;
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
			<li><a href="adminhomepage.do" class="menutitle"><h3>ADMIN</h3></a></li>
			<li><h5 class="menutitle">제품관리</h5></li>
			<li><a href="adminproductmanage.do"
				onclick="selectEditType('client')" class="menufont">제품조회</a></li>

			<li><h5 class="menutitle">검수관리</h5></li>
			<li><a href="admintranschange.do"
				onclick="selectEditType('client')" class="menufont">거래목록</a></li>
			
			<li><h5 class="menutitle">회원관리</h5></li>
			<li><a href="adminusermanage.do"
				onclick="selectEditType('client')" class="menufont">회원목록</a></li>



			<!-- Add more menu items as needed -->
		</ul>
	</div>
	<div>
		<form id="clientEditForm" method="post" action="passwordcheckform.do">
			<input type="hidden" id="editType" name="editType">
		</form>
		<form id="bidTypeForm" method="post" action="bidlist.do">
			<input type="hidden" id="bidType" name="bidType">
		</form>
	</div>
	<script type="text/javascript">
		function selectEditType(str) {

			document.getElementById("editType").value = str;
			document.getElementById("clientEditForm").submit();
		}
		function selectBidType(str) {

			document.getElementById("bidType").value = str;
			document.getElementById("bidTypeForm").submit();
		}
	</script>

</body>

</html>
