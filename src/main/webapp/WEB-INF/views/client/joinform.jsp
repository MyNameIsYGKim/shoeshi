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

.ipradi {
	border-radius: 7px;
}

.idradi {
	border-top-left-radius: 7px;
	border-bottom-left-radius: 7px;
}

.btnradi {
	border-top-right-radius: 7px;
	border-bottom-right-radius: 7px;
}

.div-padding {
	padding: 20px, 0px;
}

body {
	background-color: #fff;
	f
	margin: 0;
}

a {
	text-decoration: none;
	color: #222;
}

/*member sign in*/
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

.member {
	width: 400px;
	/* border: 1px solid #000; */
	margin: 50px auto 100px; /*중앙 정렬*/
	padding: 10px 20px 0 20px;
	margin-bottom: 100px;
	ont-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	line-height: 1.5em;
	color: #222;s
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
	
	text-align: left;
	font-weight: bold;
	margin-bottom: 50px
	
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


	<div class="member">
	<h3 class="signup-title">회원가입</h3>
		<!-- 2. 필드 -->

		<form id="frm" action="join.do" onsubmit="return formCheck()"
			method="post" enctype="multipart/form-data">
			<!-- 첨부파일있을때는 enctype="multipart/form-data" 필수 -->
			<div class="field id">
				<b>아이디</b>
				<div>
					<input type="text" placeholder="아이디 입력" id="clientId"
						class="idradi" name="clientId" required="required">
					<button type="button" id="btn" value="No" onclick="idCheck()"
						class="btnradi">중복확인</button>

					<!-- <input type="button"
						value="중복확인" id="btn" value="No" onclick="idCheck()"> -->
				</div>
			</div>

			<div class="field">
				<b>비밀번호</b> <input placeholder="비밀번호 입력" class="userpw ipradi"
					type="password" id="clientPassword" name="clientPassword">
			</div>
			<div class="field">
				<b>비밀번호 재확인</b> <input class="userpw-confirm ipradi"
					placeholder="비밀번호 확인" type="password" id="passwordCheck"
					required="required">
			</div>
			<div class="field">
				<b>이름</b> <input type="text" id="clientName" name="clientName"
					required="required" placeholder="이름 입력" class="ipradi">

			</div>



			<div class="field">

				<b>전화번호</b>

				<div>
					<input type="tel" placeholder="전화번호 입력" id="clientTel"
						name="clientTel" class="ipradi">
				</div>
				
			</div>
			<div class="field">
				<b>주소</b> <input type="text" placeholder="주소 입력" id="clientAddress"
					name="clientAddress" class="ipradi">
				
			</div>

			<!-- 6. 가입하기 버튼 -->
			<input type="submit" value="가입하기" class="ipradi">
		</form>
	</div>

	<script type="text/javascript">
	
		function idCheck() { // ajax 통신을 이용해서 아이디 중복체크를 한다.
			let clientId = document.getElementById("clientId").value;
			//get방식 ajax호출
			let url = "ajaxClientIdCheck.do?clientId="+clientId; 
			fetch(url)
				.then(response => response.text())
				.then(text => checkId(text));
		}
		function checkId(text){
			if(text == 'yes'){
				alert("사용 가능한 아이디 입니다.");
				document.getElementById("btn").disabled = true;
				document.getElementById("btn").value = "Yes";
				document.getElementById("clientPassword").focus();
			}else{
				alert("중복된 아이디 입니다.");
				document.getElementById("clientId").value = "";
				document.getElementById("clientId").focus();
			}
		}
		
		function formCheck() {
			document.getElementById("clientPassword").value;
			document.getElementById("passwordCheck").value;
			let id = document.getElementById("btn").value;

			if (id == 'No') {
				alert("아이디 중복체크를 하세요");
				return false;
			}
			
			if (password != passcheck) {
				alert("패스워드가 일치하지 않습니다.")
				return false;
			}

			return true;

		}
	</script>

</body>
</html>