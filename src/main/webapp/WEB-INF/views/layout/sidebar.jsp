<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />

<title>사이드바</title>

<link href="css/styles.css" rel="stylesheet" />

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
							<a class="nav-link" href="admintranschange.do">거래목록</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading" style="width: 185px;">회원관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminusermanage.do">회원목록</a>
						</nav>
					</div>
				</div>
			</nav>
		</div>

	</div>
</body>
</html>