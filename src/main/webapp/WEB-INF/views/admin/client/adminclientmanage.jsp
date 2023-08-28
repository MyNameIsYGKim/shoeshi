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
	margin-top: 30px;
	margin-bottom: 30px;
}

.tableset {
	text-align: center;
}

.bodymargin {
	margin-bottom: 10px;
}

#clientSearchVal {
	border: 1px solid gray;
	border-radius: 3px;
	display: inline;
}

.formbox {
	padding-bottom: 10px;
}

.searchbtn, .insertbtn, .clienteditbtn, .clientdeletebtn {
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
			<h1 class="admintitle" align="center">회원 관리</h1>
			<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<div class="formbox" align="center">
								<form id="adminClientForm" method="post" enctype="multipart/form-data"
									style="padding-right: 7.5px;">
									<select id="key" name="key">
										<option value="adminClientId">ID</option>
										<option value="adminClientName">Name</option>
										<option value="adminClientAddress">Address</option>
									</select>
										<input type="text" id="clientSearchVal" name="clientSearchVal" 
											size="30" style="padding: 5px;">
										<input type="button" onclick="searchList()" value="검색"
											class="btn btn-primary">
										<input type="button" onclick="location.href='adminclientinsertform.do'"
											value="등록" class="btn btn-primary pull-right">
								</form>
							</div>
							<div>
								<table class="table tableset">
									<thead>
										<tr>
											<th>아이디</th>
											<th>이름</th>
											<th>주소</th>
											<th>전화번호</th>
											<th>권한</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty clients }">
											<c:forEach items="${clients }" var="n" begin="0" end="14">
												<tr style="line-height: 35px;">
													<td>${n.clientId }</td>
													<td>${n.clientName }</td>
													<td>${n.clientAddress }</td>
													<td>${n.clientTel }</td>
													<td>${n.clientAuthor }</td>
													<td>
														<button type="button" id="clienteditbtn" 
															class="btn btn-primary pull-right"
															onclick="selectClient('${n.clientId}')">
															관리</button>
													</td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="6" align="center">· · ·</td>
											</tr>
										</c:if>
										<c:if test="${empty clients }">
											<tr>
												<td colspan="6" align="center">Empty.</td>
											</tr>
										</c:if>
									</tbody>
									<!-- 더미 데이터 끝 -->
								</table>
							</div>
							<div>
								<form id="clientfrm" method="post">
									<input type="hidden" id="clientId" name="clientId">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
	function selectClient(n) {
		document.getElementById("clientId").value = n;
		document.getElementById("clientfrm").action = "adminclientselect.do";
		document.getElementById("clientfrm").submit();
	}
	
	function searchList(){
		let key = document.getElementById("key").value;
		let clientSearchVal = document.getElementById("clientSearchVal").value;
		let payload = "key="+key+"&clientSearchVal="+clientSearchVal;
		let url = "ajaxclientsearch.do";
		
		fetch(url, {
			method: "POST",
			headers:{
				"Content-Type": "application/x-www-form-urlencoded",
			},
			body: payload
		})	.then(response => response.json())
			.then(json => htmlConvert(json));
	}
	
	function htmlConvert(datas){
		document.querySelector('tbody').remove();
		const tbody = document.createElement('tbody');
		
		// tbody에 data추가
		tbody.innerHTML = datas.map(data => htmlView(data)).join('');
		
		// table에 tbody추가
		document.querySelector('table').appendChild(tbody);
	}
	
	function htmlView(data){
		return `
				<tr style="line-height: 35px;">
					<td>\${data.clientId }</td>
					<td>\${data.clientName }</td>
					<td>\${data.clientAddress }</td>
					<td>\${data.clientTel }</td>
					<td>\${data.clientAuthor }</td>
					<td>
					<button type="button" id="clienteditbtn"
						class="btn btn-primary pull-right"
						onclick="selectClient('${n.clientId}')">
						관리</button>
					</td>
				</tr>
		`
	}
	</script>
</body>
</html>