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

#val2 {
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
			<h1 class="adminclienttitle" align="center">유저 관리</h1>
			<div class="row" style="margin-top: 5px; margin-bottom: 5px;">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<div class="formbox" align="center">
								<form id="frm" method="post">
									<select id="key" name="key">
										<option value="id">ID</option>
										<option value="name">Name</option>
										<option value="address">Address</option>
									</select>
										<input type="text" id="val2" name="val2" size="30">
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
											<c:forEach items="${clients }" var="n">
												<tr>
													<td>${n.clientId }</td>
													<td>${n.clientName }</td>
													<td>${n.clientAddress }</td>
													<td>${n.clientTel }</td>
													<td>${n.clientAuthor }</td>
													<td>
														<button type="button" class="clienteditbtn"
															onclick="clientUpdate('E')"
															onmouseover="this.style.background='gray'"
															onmouseout="this.style.background='#FAFAFA'">
															수정</button>
														<button type="button" class="clientdeletebtn"
															onclick="clientUpdate('D')"
															onmouseover="this.style.background='gray'"
															onmouseout="this.style.background='#FAFAFA'">
															삭제</button>
													</td>
												</tr>
											</c:forEach>
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
		document.getElementById("clientfrm").submit();
	}
	
	function searchList(){
		let key = document.getElementById("key").value;
		let val2 = document.getElementById("val2").value;
		let payload = "key="+key+"&val2="+val2;
		let url = "ajaxclientsearch.do";
		
		fetch(url, {
			method: "POST",
			headers:{
				"Content-Type": "application/x-www-form-urlencoded",
			},
			body: payload
		})	.then(response => response.json())
			.then(json => htmlConvert(json));
		
		console.log("key: "+key+", val2: "+val2); //====================================================
		console.log(payload);
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
				<tr onclick="selectClient(\${data.clientId })">
		
					<td>\${data.clientId }</td>
					<td>\${data.clientName }</td>
					<td>\${data.clientAddress }</td>
					<td>\${data.clientTel }</td>
					<td>\${data.clientAuthor }</td>
				</tr>
		`
	}
	
	function clientUpdate(str){
		if(str =='E'){
			document.getElementById("clientfrm").action = "adminclienteditform.do";
		}else if(str=='D'){
			document.getElementById("clientfrm").action = "adminclientdelete.do";
		}document.getElementById("frm").submit();
	}
	</script>
</body>
</html>