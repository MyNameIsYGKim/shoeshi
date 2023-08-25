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
	<div align="center">
		<h1 style="text-align: center; font-weight: bold; margin-top: 20px;">
		제품 수정</h1>
		<div>
		
		<div>
		<table>
			<tbody>
				<tr>
					<td><label>제품 코드</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productId}"
								id="productId" name="productId" value="${n.productId }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제조사</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productMaker}"
								id="productMaker" name="productMaker" value="${n.productMaker }">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제품명</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productName}"
								id="productName" name="productName" value="${n.productName}"></input>
						</div>
					</td>
						
				</tr>
				<tr>
					<td><label>출시가</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productPrice}"
								id="productPrice" name="productPrice" value="${n.productPrice}"></input>
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제품 사진</label>
						<div>
							<input type="file" class="form-control" placeholder="${m.productimgName1}"
								id="productimgName1" name="productimgName1" value="${m.productimgName1}">
						</div>
						<div>
							<input type="file" class="form-control" placeholder="${m.productimgName2}"
								id="productimgName2" name="productimgName2" value="${m.productimgName2}">
						</div>
						<div>
							<input type="file" class="form-control" placeholder="${m.productimgName3}"
								id="productimgName3" name="productimgName3" value="${m.productimgName3}">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br>
		<div class="button-container">
			<button type="button" onclick="productUpdate('E')">수정</button>
			<button type="button" onclick="productUpdate('D')">삭제</button>
			<button type="button" onclick="lcoation.href=adminproductmanage.do">취소</button>
		</div>
		<div>
			<form id="productEditHiddenForm" method="post">
				<input type="hidden" id="productId" name="productId"
					value="${n.productId }">
			</form>
		</div>
		</div>
	</div>
	<script type="text/javascript">
		
	function noticeUpdate(str){
		if(str =='E'){
			document.getElementById("productEditHiddenForm").action = "adminproductedit.do";
			document.getElementById("productEditHiddenForm").action = "adminproductimgedit.do";
		}else if(str=='D'){
			document.getElementById("productEditHiddenForm").action = "adminproductdelete.do";
			document.getElementById("productEditHiddenForm").action = "adminproductimgdelete.do";
		}document.getElementById("productEditHiddenForm").submit();
	}
	
	</script>
</body>
</html>
