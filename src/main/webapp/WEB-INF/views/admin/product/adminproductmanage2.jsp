<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<style>
.container {
	margin: 0;
}

.admintitle {
	font-weight: bold;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 40px;
}

.tableset {
	text-align: center;
}

.bodymargin {
	margin-bottom: 10px;
}

#val {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.formbox {
	padding-bottom: 10px;
}

.searchbtn, .insertbtn, .producteditbtn, .productdeletebtn {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.insertbtn {
	float: right;
}

</style>
</head>
<body>
	<div id="layoutSidenav">
		<div class="container bodymargin">
			<h1 class="adminproducttitle" align="center">물품 관리</h1>
			<!-- partial -->
			<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<div class="formbox" align="center">
								<form id="frm" method="post" enctype="multipart/form-data">
									<select id="key" name="key">
										<option value="id">ID</option>
										<option value="maker">Maker</option>
										<option value="name">Name</option>
									</select>
									<input type="text" id="val" name="val" size="30">
									<input type="button" onclick="searchList()" value="검색"
										class="searchbtn" onmouseover="this.style.background='gray'"
										onmouseout="this.style.background='#FAFAFA'">
									<input type="button" onclick="location.href='adminproductform.do'"
										value="등록" class="insertbtn"
										onmouseover="this.style.background='gray'"
										onmouseout="this.style.background='#FAFAFA'">
								</form>
							</div>
							<div>
								<table class="table tableset">
									<thead>
										<tr>
											<th>번호</th>
											<th>메이커</th>
											<th>상품명</th>
											<th>가격</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty products }">
											<c:forEach items="${products }" var="n">
												<tr>
													<td align="center">${n.productId }</td>
													<td>${n.productMaker }</td>
													<td>${n.productName }</td>
													<td>${n.productPrice }</td>
													<td>
														<button type="button" class="producteditbtn"
															onclick="productUpdate('E')"
															onmouseover="this.style.background='gray'"
															onmouseout="this.style.background='#FAFAFA'">
															수정</button>
														<button type="button" class="productdeletebtn"
															onclick="productUpdate('D')"
															onmouseover="this.style.background='gray'"
															onmouseout="this.style.background='#FAFAFA'">
															삭제</button>
													</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${empty products }">
											<tr>
												<td colspan="5" align="center">Empty.</td>
											</tr>
										</c:if>
									</tbody>
									<!-- 더미 데이터 끝 -->
								</table>
							</div>
							<div>
								<form id="productfrm" method="post">
									<input type="hidden" id="productId" name="productId"
										value="${n.productId }">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- main-panel ends -->
			<!-- page-body-wrapper ends -->
		</div>
	</div>
	<script type="text/javascript">
		function productUpdate(str){
			if(str =='E'){
				document.getElementById("productfrm").action = "adminproducteditform.do";
			}else if(str=='D'){
				document.getElementById("productfrm").action = "adminproductdelete.do";
			}document.getElementById("frm").submit();
		}
	</script>
</body>
</html>











