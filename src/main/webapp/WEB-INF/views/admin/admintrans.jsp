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
<title>AdminProductManage</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="adminhome.do">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div>
							<div>Admin</div>
						</a>
						<div class="sb-sidenav-menu-heading">물품관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminproductmanage.do">물품조회(수정, 삭제)</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">

						</div>

						<div class="sb-sidenav-menu-heading">거래관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="admintrans.do">거래목록</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">

						</div>

						<div class="sb-sidenav-menu-heading">회원관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminusermanage.do">회원목록</a>
						</nav>
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">

				</div>
		</div>
</body>
</html>