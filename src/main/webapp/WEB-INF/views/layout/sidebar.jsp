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
<title>사이드바</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />

<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<style>
.container {
	margin: 0;
}

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
</
</style>
</head>
<body>
	<div id="layoutSidenav" style="height: 100vh;">
		<div>
			<nav class="sb-sidenav accordion sb-sidenav-dark">
				<div class="sb-sidenav-menu">
					<div class="nav" style="margin-left: 20px;">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="adminhomepage.do">
							<div>Admin</div>
						</a>
						<div class="sb-sidenav-menu-heading">제품관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminproductmanage.do">제품조회</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading">검수관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="admindealmanage.do">거래목록</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading" style="width: 185px;">회원관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminclientmanage.do">회원목록</a>
						</nav>
					</div>
				</div>
			</nav>
		</div>

	</div>
</body>
</html>