<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>상품 등록</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />

<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<style>
.tablestyle {
	border: 1px solid #ccc;
	text-align: center;
}
</style>

</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="../layout/sidebar.jsp" />
		<div>
			<div class="jumbotron">
				<div class="container">
					<h1 class="display-3">상품등록</h1>
				</div>
			</div>
			<div class="container">
				<form name="newProduct" action="addProduct_process.jsp"
					method="post" class="form-horizontal">
					<div class="form-group row">
						<label class="col-sm-2">상품코드</label>
						<div class="col-sm-3">
							<input type="text" name="productId" class="form-control" />
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">상품명</label>
						<div class="col-sm-3">
							<input type="text" name="pname" class="form-control" />
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" name="uniPrice" class="form-control" />
						</div>
					</div>


					<div class="form-group row">
						<label class="col-sm-2">상세정보</label>
						<div class="col-sm-5">
							<textarea name="description" class="form-control"></textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">제조사</label>
						<div class="col-sm-3">
							<input type="text" name="menfacturer" class="form-control" />
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="text" name="category" class="form-control" />
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">재고수</label>
						<div class="col-sm-3">
							<input type="text" name="uniInStock" class="form-control" />
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">상태</label>
						<div class="col-sm-5">
							<input type="radio" name="condition" id="condition1" value="new" />
							<label for="condition1">신규제품</label> <input type="radio"
								name="condition" id="condition2" value="Old" /> <label
								for="condition2">중고제품</label> <input type="radio"
								name="condition" id="condition3" value="Refurbished" /> <label
								for="condition3">재생제품</label>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-primary" value="등록" />
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>
