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


<style type="text/css">
.container1 {
	width: 50%;
	margin-left: 200px;
}

background












:












#eee












;
}
.card {
	box-shadow: 0 20px 27px 0 rgb(0 0 0/ 5%);
}

.width-90 {
	width: 90px !important;
}

.rounded-3 {
	border-radius: 0.5rem !important;
}

a {
	text-decoration: none;
}
</style>
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
		<!-- 네비게이션 바 끝 -->


		<div class="container1">
			<h2>구매 내역</h2>
			<div class="row">
				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/FF00FF/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 1</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/6495ED/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 2</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/00FFFF/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 3</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<h2>판매 내역</h2>
				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/FFB6C1/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 4</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/FFB6C1/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 4</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/FFB6C1/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 4</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-12">
					<div class="card mb-3 card-body">
						<div class="row align-items-center">
							<div class="col-auto">
								<a href="#!.html"> <img
									src="https://www.bootdey.com/image/280x280/FFB6C1/000000"
									class="width-90 rounded-3" alt>
								</a>
							</div>
							<div class="col">
								<div class="overflow-hidden flex-nowrap">
									<h6 class="mb-1">
										<a href="#!" class="text-reset">상품명 4</a>
									</h6>
									<span class="text-muted d-block mb-2 small"> Updated 2
										Hours Ago </span>
									<div class="row align-items-center">
										<div class="col-12">
											<a>상품 설명을 적어주세요.</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</body>

</html>