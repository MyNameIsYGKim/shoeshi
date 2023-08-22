<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>입찰내역 수정</h1>
		</div>
		<div>
			<form id="frm" action="adminbidedit.do" method="post"
				enctype="multipart/form-data">
				<div align="center">
					<div>
						<table border="1">
							<thead>
								<tr align="center">
									<th width="50">입찰순번</th>
									<th width="50">제품번호</th>
									<th width="150">입찰가격</th>
									<th width="50">입찰유형</th>
									<th width="150">유저아이디</th>
									<th width="50">제품사이즈</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td align="center">
										<input type="text" id="bidNo" name="bidNo" value="${n.bidNo }">
									</td>
									<td align="center">
										<input type="text" id="productId" name="productId" value="${n.productId }">
									</td>
									<td align="center">
										<input type="text" id="bidPrice" name="bidPrice" value="${n.bidPrice }">
									</td>
									<td align="center">
										<input type="text" id="bidType" name="bidType" value="${n.bidType }">
									</td>
									<td align="center">
										<input type="text" id="cliendId" name="cliendId" value="${n.cliendId }">
									</td>
									<td align="center">
										<input type="text" id="productSize" name="productSize" value="${n.productSize }">
									</td>
								</tr>
							</tbody>
						</table>
					</div><br>
					<div>
						<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
						<input type="reset" onclick="lcoation.href='adminbidedit.do'" value="취소">
					</div>
					<input type="hidden" id="bidNo" name="bidNo" value="${n.bidNo }">
				</div>
			</form>
		</div>
	</div>
</body>
</html>