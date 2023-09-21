<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디 찾기</title>
<link rel="icon" href="./images/images2/favicon.png">
<link rel="stylesheet" href="./quiz07.css">
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap')
	;

* {
	box-sizing: border-box; /*전체에 박스사이징*/
	outline: none; /*focus 했을때 테두리 나오게 */
}

.mg100000 {
	margin: 70px 0;
}

.ipradi {
	border-radius: 7px;
}

.telradi {
	border-top-left-radius: 7px;
	border-bottom-left-radius: 7px;
}

.btnradi {
	border-top-right-radius: 7px;
	border-bottom-right-radius: 7px;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	background-color: #fff;
	line-height: 1.5em;
	color: #222;
	margin: 0;
}

a {
	text-decoration: none;
	color: #222;
}

/*member sign in*/
.member {
	width: 400px;
	/* border: 1px solid #000; */
	margin: auto; /*중앙 정렬*/
	padding: 0 20px;
	margin-bottom: 20px;
}

.member .field {
	margin: 5px 0; /*상하로 좀 띄워주기*/
}

.member b {
	/* border: 1px solid #000; */
	display: block; /*수직 정렬하기 */
	margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.member input:not(input[type=radio]), .member select {
	border: 1px solid #dadada;
	padding: 10px;
	width: 100%;
	margin-bottom: 5px;
}

.member input[type=button], .member input[type=submit] {
	background-color: #000000;
	color: #fff
}

.member input:focus, .member select:focus {
	border: 1px solid #2db400;
	border-radius: 7px;
}

.field.birth div { /*field 이면서 birth*/
	display: flex;
	gap: 10px; /*간격 벌려줄때 공식처럼 사용핟나 */
}

/* .field.birth div > * {  gap 사용한거랑 같은 효과를 줌 
    flex:1;
} */
.field.tel-number div {
	display: flex;
}

.field.tel-number div input:nth-child(1) {
	flex: 2;
}

.field.tel-number div input:nth-child(2) {
	flex: 1;
}

.placehold-text {
	display: block; /*span 으로 감싸서 크기영역을 블록요소로 만들어ㅜ저야한다*/
	position: relative;
	/* border: 1px solid #000; */
}

.placehold-text:before {
	position: absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
	right: 20px;
	top: 13px;
	pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

@media ( max-width :768px) {
	.member {
		width: 100%;
	}
}

.info #info__id {
	position: relative;
}

.searchpw-title {
	text-align: center;
	font-weight: bold;
}

.find-signup-wrap {
	text-align: center;
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

.top-marg {
	margin-top: 20px;
}
.image {
		margin-top: 40px;
		height: 100px;
		padding: 0px 10px 0px;
		margin-bottom: 30px;
	}
	.par111{
	text-align: center;
	}
</style>

</head>
<body>
	<div class="mg100000">
		<header>
			<!--language select-->


			<!--NAVER LOGO-->
			<div class="par111">
				<a href="home.do" title=""><img src="logo/logo.svg"
					class="image par111"></a>
			</div>
		</header>
		<form action="login.do" method="post">
			<section class="login-wrap">
				<div class="member">
					<!-- 2. 필드 -->
					<div class="field">
						<b>아이디</b> <input type="text" class="ipradi" placeholder="아이디 입력"
							id="clientId" name="clientId">
					</div>

					<div class="field tel-number">
						<b>비밀번호</b> <input type="password" placeholder="비밀번호 입력"
							id="clientPassword" name="clientPassword" class="ipradi">
					</div>


					<!-- 6. 찾기 버튼 -->
					<div class="field ">
						<input type="submit" value="로그인" class="ipradi top-marg">
					</div>
				</div>
			</section>
			<section class="find-signup-wrap">

				<span class="find-id"> <a href="findid.do">아이디 찾기</a>
				</span> <span class="find-pw"> <a href="findpassword.do">비밀번호 찾기</a>
				</span> <span class="sign-up"> <a href="joinform.do">회원가입</a>
				</span>

			</section>
		</form>
	</div>
</body>
</html>