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
		<div>
		<h1 style="text-align: center; font-weight: bold; margin-top: 20px;">
		거래 수정</h1>
		</div>
		<div>
			<form id="dealeditform" action="admindealedit.do" method="post">
		<div>
		<table>
			<tbody>
				<tr>
					<td><label>거래번호</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealNo}"
								id="dealNo" name="dealNo" value="${n.dealNo }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>거래날짜</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealDate}"
								id="dealDate" name="dealDate" value="${n.dealDate }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제품번호</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productId}"
								id="productId" name="productId" value="${n.productId }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제품사이즈</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productSize}"
								id="productSize" name="productSize" value="${n.productSize }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>구매자</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealBuyer}"
								id="dealBuyer" name="dealBuyer" value="${n.dealBuyer }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>판매자</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealSeller}"
								id="dealSeller" name="dealSeller" value="${n.dealSeller }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>판매자</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealPrice}"
								id="dealPrice" name="dealPrice" value="${n.dealPrice }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>거래상태</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealState}"
								id="dealState" name="dealState" value="${n.dealState }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<select id="key" name="key">
							<option>상태</option>
							<option value="dealEditPass">합격</option>
							<option value="dealEditCancel">불합격</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><label>취소사유</label>
						<div>
							<input type="text" class="form-control" 
								id="dealComent" name="dealComent" value="${n.dealComent}">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div class="button-container">
			<button type="submit" class="btn btn-primary 1">수정</button>
			<button type="button" onclick="lcoation.href=admindealmanage.do" 
				class="btn btn-primary 2">취소</button>
		</div>
		<input type="hidden" id="dealNo" name="dealNo" value=${n.dealNo }>
		</form>
		</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>
