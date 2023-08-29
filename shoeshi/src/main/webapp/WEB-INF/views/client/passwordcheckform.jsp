<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디 찾기</title>
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
		<form id="passwordCheckForm" method="post">
			<section class="login-wrap">
				<!-- 2. 필드 -->
				<%-- <div class="field">
					<input id="clientId" name="clientId" type="hidden"
						value="${clientId}"></input>
				</div> --%>

				<%-- <div class="field">
					<input id="editType" name="editType" type="text"
						value="${editType}"></input>
				</div> --%>

				<div class="field">
					<b>비밀번호</b> <input placeholder="비밀번호" id="clientPassword"
						name="clientPassword" type="password" class="input-pw"
						autofocus="autofocus"></input>
				</div>


				<!-- 6. 찾기 버튼 -->
				<div class="topma">
					<input type="submit" value="비밀번호 확인">
				</div>

			</section>



		</form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#passwordCheckForm").submit(function(event) {
				event.preventDefault(); // 기본 폼 제출 동작을 막음

				// 폼 데이터를 가져와서 JSON 형태로 만듭니다.
				var clientPassword = $("#clientPassword").val();
				var editType = "${type}";

				console.log(clientPassword);
				console.log(editType);
				// AJAX 요청을 보냅니다.
				$.ajax({
					type : "POST",
					/* contentType : "application/json", */
					url : "passwordcheck.do", // 로그인을 처리하는 컨트롤러 URL로 변경하세요.
					data : "clientPassword=" + clientPassword,
					dataType : 'text',
					success : function(result) {
						if (result == 'yes') {
							if (editType == 'client') {
								location.href = "clienteditform.do";
							} else {
								location.href = "paymenteditform.do";
							}
						} else {
							// 로그인 실패 처리
							alert("비밀번호가 올바르지 않습니다.");
						}
					},
					error : function(e) {
						console.log("오류 발생: " + e);
					}
				});
			});
		});
	</script>
</body>
</html>