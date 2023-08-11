<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<head>
<title>Ultras - Clothing Store eCommerce Store HTML Website
	Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="ultras/css/normalize.css">
<link rel="stylesheet" type="text/css" href="ultras/icomoon/icomoon.css">
<link rel="stylesheet" type="text/css" media="all"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="ultras/css/vendor.css">
<link rel="stylesheet" type="text/css" href="ultras/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<!-- script
    ================================================== -->
<script src="ultras/js/modernizr.js"></script>
</head>


<div class="preloader-wrapper">
	<div class="preloader"></div>
</div>

<div class="search-popup">
	<div class="search-popup-container">

		<form role="search" method="get" class="search-form" action="">
			<input type="search" id="search-form" class="search-field"
				placeholder="Type and press enter" value="" name="s" />
			<button type="submit" class="search-submit">
				<a href="#"><i class="icon icon-search"></i></a>
			</button>
		</form>

		<h5 class="cat-list-title">Browse Categories</h5>

		<ul class="cat-list">
			<li class="cat-list-item"><a href="shop.html"
				title="Men Jackets">Men Jackets</a></li>
			<li class="cat-list-item"><a href="shop.html" title="Fashion">Fashion</a>
			</li>
			<li class="cat-list-item"><a href="shop.html"
				title="Casual Wears">Casual Wears</a></li>
			<li class="cat-list-item"><a href="shop.html" title="Women">Women</a>
			</li>
			<li class="cat-list-item"><a href="shop.html" title="Trending">Trending</a>
			</li>
			<li class="cat-list-item"><a href="shop.html" title="Hoodie">Hoodie</a>
			</li>
			<li class="cat-list-item"><a href="shop.html" title="Kids">Kids</a>
			</li>
		</ul>
	</div>
</div>
<!-- header 시작-->
<tiles:insertAttribute name="header" />
<!-- header 끝-->

<!-- body시작 -->

<tiles:insertAttribute name="body" />


<!-- body 끝 -->



<!-- footer 시작 -->
<tiles:insertAttribute name="footer" />
<!-- footer 끝 -->

<script src="ultras/js/jquery-1.11.0.min.js"></script>
<script src="ultras/js/plugins.js"></script>
<script src="ultras/js/script.js"></script>
</body>
</html>