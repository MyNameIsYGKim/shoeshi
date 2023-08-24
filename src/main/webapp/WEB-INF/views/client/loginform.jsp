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

body {
	background-color: #fff;
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
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	line-height: 1.5em;
	min-height: 50vh;
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
	border-radius: 7px;
}

.member input[type=button], .member input[type=submit] {
	background-color: #000000;
	color: #fff
}

.member input:focus, .member select:focus {
	border: 1px solid #2db400;
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

.image {
	height: 80px;
	padding: 0px;
}

.par111 {
	text-align: center;
	margin: 70px 0 30px;
}

.ctgogo {
	text-align: center;
	margin: 30px 0;
}

.topma {
	margin-top: 20px;
	border-radius: 7px;
}
</style>

</head>
<body>

	<div class="member">
		<div class="par111">
			<a href="home.do" title=""><img src="logo/logo.svg" class="image"></a>
		</div>
		<form action="login.do" method="post">
			<section class="login-wrap">
				<!-- 2. 필드 -->
				<div class="field">
					<b>아이디</b> <input placeholder="아이디" id="clientId" name="clientId"
						type="text" class="input-id" autofocus="autofocus"></input>
				</div>

				<div class="field">
					<b>비밀번호</b> <input placeholder="비밀번호" id="clientPassword"
						name="clientPassword" type="password" class="input-pw"></input>
				</div>


				<!-- 6. 찾기 버튼 -->
				<div class="topma">
					<input type="submit" value="로그인">
				</div>
			</section>


			<!--class,PW 찾기 및 회원가입 부분-->
			<div class="find-signup-wrap">
				<div class="ctgogo">
					<span class="find-id"> <a href="findid.do">아이디 찾기</a>
					</span> <span class="find-pw"> <a href="findpassword.do">비밀번호
							찾기</a>
					</span> <span class="sign-up"> <a href="joinform.do">회원가입</a>
					</span>
				</div>
			</div>
		</form>
	</div>

</body>
</html>