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
.tablestyle{
border: 1px solid #ccc;
text-align: center;
}
	</style>
	
</head>
<body>
	<div id="layoutSidenav">
		<div>
			<nav class="sb-sidenav accordion sb-sidenav-dark">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="adminhome.do">
							<div>Admin</div>
						</a>
						<div class="sb-sidenav-menu-heading">물품관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminproductmanage.do">물품조회(수정, 삭제)</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading">거래관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="admintrans.do">거래목록</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="admintranschange.do">거래상태 변경</a>
						</nav>

						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						</div>

						<div class="sb-sidenav-menu-heading">회원관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="adminusermanage.do">회원목록</a>
						</nav>
					</div>
				</div>
			</nav>
		</div>


<div>
			<form id="frm" action="noticeedit.do" method="post"
				enctype="multipart/form-data">
				<div>
					<table class="tablestyle">
						<tr>
							<td>&nbsp;</td>
							<th width="100">제품명</th>
							<td width="300"><input type="text"></td>

							<th width="100">제품등록일</th>
							<td width="300"><input type="date" id="noticeDate"
								name="noticeDate" value="${n.noticeDate }"></td>
							<td>&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="5"></td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="5"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<th>제품 설명</th>
							<td colspan="3"><textarea id="noticeSubject"
									name="noticeSubject" cols="80" rows="15">${n.noticeSubject }</textarea></td>
							<td>&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="5"></td>
						</tr>
						<tr>
						
							<th>첨부파일</th>
							<td>${n.noticeAttach }</td>
							<td colspan="2"><input type="file" id="file" name="file">
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="5"></td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="button" onclick="location.href='noticelist.do'" value="취소">
				</div>
				<input type="hidden" id="noticeId" name="noticeId"
					value="${n.noticeId }">					
			</form>
		</div>



	</div>
</body>
</html>