<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>adminproductmodify</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
.container1 {
	margin: 0 auto;
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
	<form method="post" class="formst">
		<h1 style="text-align: center; font-weight: bold; margin-top: 20px;">제품
			수정</h1>
		<table>
			<tbody>
				<tr>
					<td><label>제품 코드</label>
						<div>
							<input type="text" class="form-control" placeholder="제품 코드" readonly="readonly"></input>
						</div></td>
				</tr>
				<tr>
					<td><label>제조사</label><input type="text" class="form-control"
						placeholder="제조사"></input></td>
				</tr>
				<tr>
					<td><label>제품명</label><input type="text" class="form-control"
						placeholder="제품명"></input></td>
				</tr>
				<tr>
					<td><label>출시가</label><input type="number"
						class="form-control" placeholder="출시가"></input></td>
				</tr>
				<tr>
					<td><label>제품 사진</label><input type="file"
						class="form-control"></input></td>
				</tr>
			</tbody>
		</table>
		<div class="button-container">
			<button type="submit" class="btn btn-primary pull-right" id="close">취소</button>
			<button type="submit" class="btn btn-primary pull-right">수정</button>
		</div>
	</form>
	<script>
		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#close").addEventListener("click", close);
	</script>
</body>
</html>
