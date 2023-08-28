<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>adminclientinsertform</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
.container1 {
	margin: 0 auto;
}

label {
	margin: 0;
}

#key {
	margin: 10px;
}

.formst {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20px;
	margin-bottom: 20px;
	margin: 0 auto;
	width: 500px;
}

.form-control {
	margin-left: 0;
}

/* 입력 요소 스타일 추가 */
form input[type="text"], form input[type="number"], form input[type="file"]
	{
	width: 100%;
	max-width: 300px; /* 최대 너비 설정 (필요한 경우 조정) */
	height: 35px;
	margin-bottom: 10px;
	padding: 5px;
	box-sizing: border-box;
}

.btn-primary {
	width: 54.5px;
	max-width: 300px; /* 최대 너비 설정 (필요한 경우 조정) */
	height: 35px;
	margin-top: 20px;
	margin-bottom: 20px;
}

.row1 {
	border: 1px solid #ccc;
	width: 700px;
	margin: 0 auto;
}

.row2 {
	margin-top: 20px;
	margin-bottom: 20px;
}

.button-container {
	text-align: center;
}

.button-container .btn {
	margin-right: 10px;
}
</style>
</head>
<body>
	<div class="container1">
	<div class="row2">
	<div class="row1">
	<div class="formst">
		<h1 style="text-align: center; font-weight: bold; margin-top: 20px;">
		회원 등록</h1>
		<div>
			<form id="clienteditform" action="adminclientinsert.do" method="post">
		<div>
		<table>
			<tbody>
				<tr>
					<td><label>ID</label>
						<div>
							<input type="text" id="clientInsertId" name="clientInsertId"
								class="form-control" placeholder="아이디 입력" required="required">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>PASSWORD</label>
						<div>
							<input type="text" id="clientInsertPassword" name="clientInsertPassword"
								class="form-control" placeholder="비밀번호 입력" required="required">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>이름</label>
						<div>
							<input type="text" id="clientInsertName" name="clientInsertName"
								class="form-control" placeholder="이름 입력" required="required">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>주소</label>
						<div>
							<input type="text" id="clientInsertAddress" name="clientInsertAddress"
								class="form-control" placeholder="주소 입력">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>전화번호</label>
						<div>
							<input type="text" id="clientInsertTel" name="clientInsertTel"
								class="form-control" placeholder="전화번호 입력" required="required">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>권한</label>
						<div>
							<select id="key" name="key">
								<option>권한</option>
								<option value="adminInsertUser">USER</option>
								<option value="adminInsertAdmin">ADMIN</option>
							</select>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br>
		<div class="button-container">
			<button type="submit" class="btn btn-primary">
				등록</button>
		</div>
		</form>
		</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>
