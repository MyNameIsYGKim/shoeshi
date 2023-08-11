<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ashion Template">
<meta name="keywords" content="Ashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title><tiles:getAsString name="title" /></title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cookie&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="ashion/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="ashion/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="ashion/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="ashion/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="ashion/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="ashion/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="ashion/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="ashion/css/style.css" type="text/css">
</head>

<body>
	<!-- header 시작-->
	<tiles:insertAttribute name="header" />
	<!-- header 끝-->

	<!-- body시작 -->

	<tiles:insertAttribute name="body" />


	<!-- body 끝 -->



	<!-- footer 시작 -->
	<tiles:insertAttribute name="footer" />
	<!-- footer 끝 -->



	<!-- Js Plugins -->
	<script src="ashion/js/jquery-3.3.1.min.js"></script>
	<script src="ashion/js/bootstrap.min.js"></script>
	<script src="ashion/js/jquery.magnific-popup.min.js"></script>
	<script src="ashion/js/jquery-ui.min.js"></script>
	<script src="ashion/js/mixitup.min.js"></script>
	<script src="ashion/js/jquery.countdown.min.js"></script>
	<script src="ashion/js/jquery.slicknav.js"></script>
	<script src="ashion/js/owl.carousel.min.js"></script>
	<script src="ashion/js/jquery.nicescroll.min.js"></script>
	<script src="ashion/js/main.js"></script>
</body>
</html>