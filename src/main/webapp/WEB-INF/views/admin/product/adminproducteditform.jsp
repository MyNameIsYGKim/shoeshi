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
			<h1>물품 수정</h1>
		</div>
		<div>
			<form id="frm" action="adminproductedit.do" method="post"
				enctype="multipart/form-data">
				<div align="center">
					<div>
						<table border="1">
							<thead>
								<tr align="center">
									<th width="50">번호</th>
									<th width="150">메이커</th>
									<th width="300">제품명</th>
									<th width="150">출시가격</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td align="center">
										<input type="text" id="productId" name="productId"
											value="${n.productId }" readonly="readonly">
									</td>
									<td>
										<input type="text" id="productMaker" name="productMaker"
											value="${n.productMaker }">
									</td>
									<td>
										<input type="text" id="productName" name="productName"
											value="${n.productName }">
									</td>
									<td>
										<input type="text" id="productPrice" name="productPrice"
											value="${n.productPrice }">
									</td>
								</tr>
							</tbody>
						</table>
					</div><br>
					<div>
						<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
						<input type="reset" onclick="lcoation.href='adminproductmanage.do'" value="취소">
					</div>
					<input type="hidden" id="productId" name="productId" value="${n.productId }">
				</div>
			</form>
		</div>
	</div>
</body>
</html>