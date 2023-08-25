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
	<div align="center">
		<h1 style="text-align: center; font-weight: bold; margin-top: 20px;">
		제품 관리</h1>
		<div>
		
		<div>
		<table>
			<tbody>
				<tr>
					<td style="width:100px"><label>거래번호</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealNo}"
								id="dealNo" name="dealNo" value="${n.dealNo }" readonly="readonly">
						</div>
					</td>
					<td style="width:100px"><label>거래날짜</label>
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
					<td><label>거래가격</label>
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
					<td><label>취소사유</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.dealComent}"
								id="dealComent" name="dealComent" value="${n.dealComent }" readonly="readonly">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br>
		<div class="button-container">
			<button type="button" onclick="dealUpdate('E')">수정</button>
			<button type="button" onclick="dealUpdate('D')">삭제</button>
			<button type="button" onclick="lcoation.href=admindealmanage.do">취소</button>
		</div>
		<div>
			<form id="dealEditHiddenForm" method="post">
				<input type="hidden" id="dealNo" name="dealNo"
					value="${n.dealNo }">
			</form>
		</div>
		</div>
	</div>
	<script type="text/javascript">
		
	function dealUpdate(str){
		if(str =='E'){
			document.getElementById("dealEditHiddenForm").action = "admindealeditform.do";
		}else if(str=='D'){
			document.getElementById("dealEditHiddenForm").action = "admindealdelete.do";
		}document.getElementById("dealEditHiddenForm").submit();
	}
	
	</script>
</body>
</html>
