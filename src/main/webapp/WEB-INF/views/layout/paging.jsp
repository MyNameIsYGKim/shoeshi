<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이징</title>
<style>
.page_wrap {
	text-align: center;
	font-size: 0;
}

.page_nation {
	display: inline-block;
}

.page_nation .none {
	display: none;
}

.page_nation a {
	display: block;
	margin: 0 3px;
	float: left;
	border: 1px solid #e6e6e6;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	background-color: #fff;
	font-size: 13px;
	color: #999999;
	text-decoration: none;
}

.page_nation .arrow {
	border: 1px solid #ccc;
}

.page_nation .pprev {
	background: #f8f8f8 url('./css/arrow/page_pprev.png') no-repeat center
		center;
	margin-left: 0;
}

.page_nation .prev {
	background: #f8f8f8 url('./css/arrow/page_prev.png') no-repeat center
		center;
	margin-right: 7px;
}

.page_nation .next {
	background: #f8f8f8 url('./css/arrow/page_next.png') no-repeat center
		center;
	margin-left: 7px;
}

.page_nation .nnext {
	background: #f8f8f8 url('./css/arrow/page_nnext.png') no-repeat center
		center;
	margin-right: 0;
}

.page_nation a.active {
	background-color: #42454c;
	color: #fff;
	border: 1px solid #42454c;
}
</style>
</head>
<body>
	<div class="page_wrap">
		<div class="page_nation">
			<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a>
			<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
			<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
			<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a
				class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
		</div>
	</div>
</body>
</html>