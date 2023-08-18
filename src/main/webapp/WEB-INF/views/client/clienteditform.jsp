<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
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

.div-padding {
	padding: 20px, 0px;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	background-color: #f5f6f7;
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
	padding: 10px 20px 0 20px;
	margin-bottom: 100px;
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

.member input[type=button], .member input[type=submit], .member button[type=button]
	{
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

.button-style {
	position: absolute;
	width: 75px;
	height: 100%;
	top: 0;
	bottom: 0;
	right: 5px;
	margin: 100% 0;
	background-color: #ff9370db;
	font-weight: bold;
}

#clientId {
	margin: 0;
}

#btn {
	/* position: absolute; */
	width: 75px;
	height: 100%;
	top: 0;
	bottom: 0;
	right: 5px;
	margin: auto 0;
	/* background-color: #ff9370db; */
	font-weight: bold;
	padding: 11px 0;
}

.signup-title {
	padding-top: 100px;
	text-align: center;
	font-weight: bold;
	text-align: center;
}

.field.id div {
	display: flex;
}

.field.id div input:nth-child(2) {
	flex: 2;
}

.field.id div button:nth-child(3) {
	flex: 1;
}
</style>

</head>
<body>


	<h3 class="signup-title">회원정보 수정</h3>
	<div class="member">
		<!-- 2. 필드 -->

		<form action="clientedit.do" method="post" id="frm">
			<!-- 첨부파일있을때는 enctype="multipart/form-data" 필수 -->

			<div class="field">
				<b>비밀번호</b> <input placeholder="비밀번호 입력" class="userpw"
					type="password" id="clientPassword" name="clientPassword">
			</div>
			<div class="field">
				<b>비밀번호 재확인</b> <input class="userpw-confirm" placeholder="비밀번호 확인"
					type="password" id="passwordCheck" name="passwordCheck">
			</div>


			<div class="field">
				<b>휴대전화</b>
				<div>
					<input type="tel" placeholder="전화번호 입력" id="clientTel"
						name="clientTel">
				</div>
			</div>
			<div class="field">
				<b>주소</b> <input type="text" placeholder="주소 입력" id="clientAddress"
					name="clientAddress">
			</div>

			<div>
				<input type="submit" value="수정">
			</div>
		</form>
	</div>

	<script type="text/javascript">
	System.out.println(document.getElementById("clientPassword") + " "
			+ document.getElementById("clientAddress") + " " + document.getElementById("clientTel"));
		function formCheck() {
			document.getElementById("clientPassword").value;
			document.getElementById("passwordCheck").value;

			if (password != passcheck) {
				alert("패스워드가 일치하지 않습니다.")
				return false;
			}

			return true;

		}
	</script>

</body>
</html>