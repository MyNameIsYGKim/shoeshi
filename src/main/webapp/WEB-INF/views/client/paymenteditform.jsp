<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>거래정보 수정</title>
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
	
}


/*member sign in*/
.payment {
	width: 400px;
	/* border: 1px solid #000; */
	margin: auto; /*중앙 정렬*/
	padding: 10px 20px 0 20px;
	margin-bottom: 100px;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	background-color: #fff;
	line-height: 1.5em;
	color: #222;
	
}

.payment .field {
	margin: 5px 0; /*상하로 좀 띄워주기*/
}

.payment b {
	/* border: 1px solid #000; */
	display: block; /*수직 정렬하기 */
	margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.payment input:not(input[type=radio]), .payment select {
	border: 1px solid #dadada;
	padding: 10px;
	width: 100%;
	margin-bottom: 5px;
	border-radius: 7px;
}

.payment input[type=button], .payment input[type=submit], .payment button[type=button]
	{
	background-color: #000000;
	color: #fff
	
}

.payment input:focus, .payment select:focus {
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


	<h3 class="signup-title">거래정보 수정</h3>
	<div class="payment">

		<form action="paymentedit.do" method="post" id="frm"
			onsubmit="return formCheck()">
			<div class="field">
				<b>카드</b> <input placeholder="ex)현대카드, 비씨카드" class="cardco"
					type="text" id="cardCo" name="cardCo" value="${pay.cardCo }">
			</div>
			<div class="field">
				<b>카드번호</b> <input placeholder="카드번호 입력(16자리)" class="cardnum"
					type="text" id="cardNum" name="cardNum" maxlength="16"
					value="${pay.cardNum }">
			</div>
			<div class="field">
				<b>은행</b> <input placeholder="ex)농협은행, 수협은행" class="bankname"
					type="text" id="bankName" name="bankName" value="${pay.bankName }">
			</div>
			<div class="field">
				<b>정산 계좌번호</b> <input placeholder="계좌번호 입력(14자리 이하)"
					class="bankaccount" type="text" id="bankAccount" name="bankAccount"
					maxlength="14" value="${pay.bankAccount }">
			</div>

			<div>
				<input type="submit" value="수정">
			</div>
		</form>
	</div>

	<script type="text/javascript">
function formCheck() {
			let ba = document.getElementById("bankAccount").value;
			let cn = document.getElementById("cardNum").value;



			if (ba.length < 12 || isNaN(ba) == true) {
				alert("잘못된 계좌번호입니다.")
				document.getElementById("bankAccount").focus();
				return false;
			}
			if (cn.length < 16 || isNaN(cn) == true) {
				alert("잘못된 카드번호입니다.")
				document.getElementById("cardNum").focus();
				return false;
			}

			return true;

			
			
		}
	</script>
</body>
</html>