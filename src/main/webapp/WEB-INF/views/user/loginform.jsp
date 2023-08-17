<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	background-color: #f5f6f7;
}

a {
	color: black;
	text-decoration: none;
}

.main {
	text-align: center;
	margin-top: 20px;
}

/*언어설정*/
.select-lang {
	text-align: right;
	padding-right: 10px;
}
/*네이버 로고설정*/
.image {
	height: 120px;
	padding: 10px;
	margin-bottom: 10px;
}
/*input 아이디박스*/
.login-id-wrap {
	margin: 0px 10px 8px 10px;
	padding: 10px;
	border: solid 1px #dadada;
	background: #fff;
}
/*input 아이디 form*/
.input-id {
	border: none;
	outline: none;
	width: 100%;
}
/*input 패스워드박스*/
.login-pw-wrap {
	margin: 0px 10px 8px 10px;
	padding: 10px;
	border: solid 1px #dadada;
	background: #fff;
}
/*input 패스워드 form*/
.input-pw {
	border: none;
	outline: none;
	width: 100%;
}
/*로그인버튼박스*/
.login-btn-wrap {
	height: 52px;
	line-height: 55px;
	margin: 0px 10px 8px 10px;
	border: solid 1px rgba(0, 0, 0, .1);
	background-color: #000;
	color: #fff;
	cursor: pointer;
}
/*로그인버튼*/
.login-btn {
	width: 100px;
	height: 100%;
	background-color: #000;
	border: none;
	color: #fff;
	font-size: 1em;
	outline: none;
	cursor: pointer;
}
/*로그인 아래 박스*/
.under-login {
	height: 50px;
	border-bottom: 1px solid gainsboro;
	margin: 0px 10px 35px 10px;
}
/*로그인상태유지*/
.stay-check {
	margin-left: 7px;
	float: left;
}
/*IP보안 표시X*/
.ip-check {
	display: none;
}
/*간편한 로그인 구역*/
.easy-login-wrap {
	height: 90px;
	margin: 0px 10px 35px 10px;
}
/*간편한 로그인 텍스트*/
.easy-login {
	font-size: 20px;
}
/*QR & 일회용 로그인 박스 구역*/
.easy-login-box {
	display: grid;
	grid-template-columns: 1fr 1fr;
}
/*QR코드 로그인*/
.qr-login {
	float: left;
	border: 1px solid #03c75a;
	background-color: #fff;
	margin: 0px 4px 0px 0px;
	line-height: 55px;
}
/*일회용 번호 로그인*/
.onetime-login {
	float: right;
	border: 1px solid #03c75a;
	background-color: #fff;
	margin: 0px 0px 0px 4px;
	line-height: 55px;
}
/*찾기 및 회원가입*/
.find-signup-wrap {
	height: 100px;
	grid-template-columns: 1fr 1fr 1fr;
}
/*찾기 및 회원가입 글자 희미하게 바꾸기*/
.find-signup-wrap a {
	color: rgb(150, 150, 150);
}
/*아이디 찾기*/
.find-id {
	margin: 3px;
	font-size: 14px;
	border-right: 1px solid gainsboro;
}
/*비밀번호 찾기*/
.find-pw {
	margin: 3px;
	font-size: 14px;
	border-right: 1px solid gainsboro;
}
/*회원가입*/
.sign-up {
	margin: 3px;
	font-size: 14px;
}
/*저작권 표시X*/
footer {
	display: none;
}

/*가로 800px 이상일때*/
@media ( min-width : 800px) {
	.main {
		width: 460px;
		margin: auto;
	}

	/*언어설정*/
	.select-lang {
		margin-top: 20px;
		width: 550px;
		padding-right: 10px;
	}
	/*네이버 로고설정*/
	.image {
		margin-top: 40px;
		height: 120px;
		padding: 0px 10px 0px;
		margin-bottom: 20px;
	}

	/*IP보안 표시*/
	.ip-check {
		margin-right: 7px;
		float: right;
		display: block;
	}

	/*저작권 표시*/
	footer {
		display: block;
	}
	.par111 {
		
	}
	/*.chi111 {
		position: absolute;
		top: 50%;
		left: 50%;
	} */
}
</style>
</head>
<body>
	<div class="main">

		<!--웹페이지 상단-->
		<header>
			<!--language select-->


			<!--NAVER LOGO-->
			<div class="par111">
				<a href="home.do" title=""><img
					src="logo/logo.svg" class="image par111"></a>
			</div>
		</header>

		<!--로그인 부분-->
		<section class="login-wrap">

			<div class="login-id-wrap">
				<input placeholder="아이디" type="text" class="input-id"></input>
			</div>
			<div class="login-pw-wrap">
				<input placeholder="비밀번호" type="password" class="input-pw"></input>
			</div>
			<div class="login-btn-wrap">
				<button class="login-btn">로그인</button>
			</div>



		</section>


		<!--class,PW 찾기 및 회원가입 부분-->
		<section class="find-signup-wrap">

			<span class="find-id"> <a
				href="https://nclass.naver.com/user2/help/classInquiry?lang=ko_KR"
				target="_blank" title="QR코드 로그인">아이디 찾기</a>
			</span> <span class="find-pw"> <a
				href="https://nclass.naver.com/user2/help/pwInquiry?lang=ko_KR"
				target="_blank" title="일회용번호 로그인">비밀번호 찾기</a>
			</span> <span class="sign-up"> <a
				href="https://nclass.naver.com/user2/V2Join?m=agree&lang=ko_KR"
				target="_blank" title="일회용번호 로그인">회원가입</a>
			</span>

		</section>



	</div>
</body>
</html>