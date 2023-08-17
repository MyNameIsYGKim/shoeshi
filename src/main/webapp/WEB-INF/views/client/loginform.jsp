<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif
}

.body11 {
	height: 100vh;
	/* background: linear-gradient(to top, #c9c9ff 50%, #9090fa 90%) no-repeat */
}

.container11 {
	margin: 50px auto
}

.panel-heading {
	text-align: center;
	margin-bottom: 10px
}

#forgot {
	min-width: 100px;
	margin-left: auto;
	text-decoration: none
}

a:hover {
	text-decoration: none
}

.form-inline label {
	padding-left: 10px;
	margin: 0;
	cursor: pointer
}

.btn.btn-primary {
	margin-top: 20px;
	border-radius: 15px
}

.panel {
	min-height: 380px;
	box-shadow: 20px 20px 80px rgb(218, 218, 218);
	border-radius: 12px
}

.input-field {
	border-radius: 5px;
	padding: 5px;
	display: flex;
	align-items: center;
	cursor: pointer;
	border: 1px solid #ddd;
	color: #4343ff
}

input[type='text'], input[type='password'] {
	border: none;
	outline: none;
	box-shadow: none;
	width: 100%
}

.fa-eye-slash.btn {
	border: none;
	outline: none;
	box-shadow: none
}

img11 {
	width: 40px;
	height: 40px;
	object-fit: cover;
	border-radius: 50%;
	position: relative
}

a[target='_blank'] {
	position: relative;
	transition: all 0.1s ease-in-out
}

.bordert {
	border-top: 1px solid #aaa;
	position: relative
}

.bordert:after {
	content: "or connect with";
	position: absolute;
	top: -13px;
	left: 33%;
	background-color: #fff;
	padding: 0px 8px
}

@media ( max-width : 360px) {
	#forgot {
		margin-left: 0;
		padding-top: 10px
	}
	.body11 {
		height: 100%
	}
	.container {
	/* 	margin: 30px 0 */
	}
	.bordert:after {
		left: 25%
	}
}
</style>

</head>
<body class="body11">
	<div class="container11">
		<div class="row">
			<div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
				<div class="panel border bg-white">
					<div class="panel-heading">
						<h3 class="pt-3 font-weight-bold">로그인</h3>
					</div>
					<div class="panel-body p-3">
						<form action="login.do" method="GET">
							<div class="form-group py-2">
								<div class="input-field">
									<span class="far p-2"></span> <input type="text"
										placeholder="아이디" name="clientId" autofocus="autofocus" required>
								</div>
							</div>
							<div class="form-group py-1 pb-2">
								<div class="input-field">
									<span class="fas px-2"></span> <input type="password"
										placeholder="비밀번호" name="clientPassword" required>
									<button class="btn bg-white text-muted">
										<span class="far "></span>
									</button>
								</div>
							</div>
							<div class="form-inline">
								<a
									href="#" class="font-weight-bold">아이디 찾기</a> <a
									href="#" id="forgot" class="font-weight-bold">비밀번호 찾기</a>
							</div>
							<div ><input class="btn btn-primary btn-block mt-3" type="submit" value="로그인"></div>
							<div class="text-center pt-4 text-muted">
								회원이 아니신가요? <a href="joinform.do">회원가입</a>
							</div>
						</form>
					</div>
				
				</div>
			</div>
		</div>
	</div>
</body>

</html>