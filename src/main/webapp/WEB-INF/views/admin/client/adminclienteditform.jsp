<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>adminclienteditform</title>
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
		회원 수정</h1>
		<div>
			<form id="clienteditform" action="adminclientedit.do" method="post">
		<div>
		<table>
			<tbody>
				<tr>
					<td><label>ID</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.clientId}"
								id="clientId" name="clientId" value="${n.clientId }">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>이름</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.clientName}"
								id="clientName" name="clientName" value="${n.clientName }">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>주소</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.clientAddress}"
								id="clientAddress" name="clientAddress" value="${n.clientAddress }">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>전화번호</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.clientTel}"
								id="clientTel" name="clientTel" value="${n.clientTel }">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>권한</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.clientAuthor}"
								id="clientAuthor" name="clientAuthor" value="${n.clientAuthor }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<select id="key" name="key">
							<option>권한</option>
							<option value="authorUser">USER</option>
							<option value="authorAdmin">ADMIN</option>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br>
		<div class="button-container">
			<button type="submit" class="btn btn-primary 1">수정</button>
			<button type="button" onclick="lcoation.href=adminclientmanage.do"
				class="btn btn-primary 2">취소</button>
		</div>
			<input type="hidden" id="clientId" name="clientId" value="${n.clientId }">
		</form>
		</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>
