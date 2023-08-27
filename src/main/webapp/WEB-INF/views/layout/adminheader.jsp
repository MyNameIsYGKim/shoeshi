<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Headers · Bootstrap v5.0</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/headers/">


<link
	href="https://fonts.googleapis.com/css2?family=Cookie&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->


<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.rdg-image {
	image-rendering: -moz-crisp-edges; /* Firefox */
	image-rendering: -o-crisp-edges; /* Opera */
	image-rendering: -webkit-optimize-contrast; /* Webkit 표준 X */
	image-rendering: crisp-edges;
	-ms-interpolation-mode: nearest-neighbor; /* IE 표준 X */
	height: 50px;
}

.fontw {
	color: white;
}

#hd {
	z-index: 10;
	position: inherit;
}
</style>


<!-- Custom styles for this template -->

</head>
<body>



	<div id="hd">
		<h1 class="visually-hidden">Headers examples</h1>
		<!-- 요기 -->
		<nav class="pyyy123">
			<div class="container d-flex flex-wrap ">
				<ul class="nav me-auto">
					<li class="nav-item"><a href="#"
						class="nav-link link-dark px-2 active" aria-current="page"></a></li>

				</ul>
				<ul class="nav">



					<c:if test="${author eq 'ADMIN'}">
						<li><a class="nav-link px-2 fontw" href="adminhomepage.do">관리자페이지</a></li>
					</c:if>
					<c:if test="${empty id}">
						<li class="nav-item"><a href="loginform.do"
							class="nav-link px-2 fontw">로그인</a></li>
					</c:if>
					<c:if test="${not empty id }">
						<li class="nav-item"><a href="logout.do"
							class="nav-link px-2 fontw">로그아웃</a></li>
						<li class="nav-link px-2 fontw">${name }님</li>
					</c:if>
				</ul>
			</div>
		</nav>

		<header class="pyyy123 ">

			<div class="container d-flex flex-wrap justify-content-center">
				<a href="home.do"
					class="align-items-center mb-3 mb-lg-0 me-lg-auto "> <span
					class="fs-4"><img class="rdg-image" alt="logo"
						src="logo/logowhite1.svg"></span>
				</a>
				<form id="searchform" class="col-12 col-lg-auto mb-3 mb-lg-0"
					action="productsearchlist.do">
					<input type="text" class="form-control"
						onKeypress="if(event.keyCode==13) {searchList()}"
						placeholder="검색어를 입력해주세요." aria-label="Search" id="val" name="val">
				</form>

			</div>
		</header>

		<!-- 요기 끝 -->
	</div>


	<script type="text/javascript">
		function searchList() {
			document.getElementById("val").value = p;
			document.getElementById("searchform").submit();
			var input = document.getElementById("val");
			input = null;
		}
	</script>
	<script src="dist/js/bootstrap.bundle.min.js">
		
	</script>


</body>
</html>