<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="css/styles.css" rel="stylesheet" />
<title>adminproducteditpopup</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
.background {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.3);
	z-index: 1000;
	/* 숨기기 */
	z-index: -1;
	opacity: 0;
}

.show {
	opacity: 1;
	z-index: 1000;
	transition: all .5s;
}

.window {
	position: relative;
	width: 100%;
	height: 100%;
}

.popup {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: #ffffff;
	box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
	/* 임시 지정 */
	width: 600px;
	height: 700px;
	/* 초기에 약간 아래에 배치 */
	transform: translate(-50%, -40%);
}

.show .popup {
	transform: translate(-50%, -50%);
	transition: all .5s;
}

.button-container {
	text-align: center;
}

.custom-button2 {
	background-color: #717fe0;
	color: white;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
	border-radius: 5px;
}
</style>
</head>
<body>
	<button id="show" class="custom-button2">제품관리</button>

	<div class="background">
		<div class="window">
			<div class="popup">
				<jsp:include page="adminproductmodify.jsp" />
			</div>
		</div>
	</div>

	<script>
		function show() {
			document.querySelector(".background").className = "background show";
		}

		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#show").addEventListener("click", show);
		document.querySelector("#close").addEventListener("click", close);
	</script>
</body>
</html>