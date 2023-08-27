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
</style>
</head>
<body>
<div class="container1">
	<div class="row2">
	<div class="row1">
	<div class="formst">
		<h1 style="text-align: center; font-weight: bold; margin-top: 20px;">
		제품 관리</h1>
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
								id="productMaker" name="productMaker" value="${n.productMaker }" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제품명</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productName}"
								id="productName" name="productName" value="${n.productName}" readonly="readonly">
						</div>
					</td>
						
				</tr>
				<tr>
					<td><label>출시가</label>
						<div>
							<input type="text" class="form-control" placeholder="${n.productPrice}"
								id="productPrice" name="productPrice" value="${n.productPrice}" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>제품 사진</label>
						<div>
							<input type="text" class="form-control" placeholder="${m.productimgName1}"
								id="productimgName1" name="productimgName1" value="수정 불가" readonly="readonly">
						</div>
						<div>
							<input type="text" class="form-control" placeholder="${m.productimgName2}"
								id="productimgName2" name="productimgName2" value="수정 불가" readonly="readonly">
						</div>
						<div>
							<input type="text" class="form-control" placeholder="${m.productimgName3}"
								id="productimgName3" name="productimgName3" value="수정 불가" readonly="readonly">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div class="button-container">
			<button type="button" onclick="productUpdate('E')" class="btn btn-primary 1">수정</button>
			<button type="button" onclick="productUpdate('D')" class="btn btn-primary 2">삭제</button>
			<button type="button" onclick="lcoation.href=adminproductmanage.do" 
				class="btn btn-primary 3">취소</button>
		</div>
		<div>
			<form id="productEditHiddenForm" method="post">
				<input type="hidden" id="productId" name="productId"
					value="${n.productId }">
			</form>
		</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	<script type="text/javascript">
		
	function productUpdate(str){
		if(str =='E'){
			document.getElementById("productEditHiddenForm").action = "adminproducteditform.do";
		}else if(str=='D'){
			document.getElementById("productEditHiddenForm").action = "adminproductdelete.do";
		}document.getElementById("productEditHiddenForm").submit();
	}
	
	</script>
</body>
</html>
