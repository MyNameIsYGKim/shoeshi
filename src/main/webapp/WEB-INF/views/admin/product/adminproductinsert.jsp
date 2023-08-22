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
			<h1>제품 등록</h1>
		</div>
		<div>
			<form id="frm" action="adminproductinsert.do" onsubmit="return formCheck()" 
				method="post">
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
										required="required">
								</td>
								<td>
									<input type="text" id="productMaker" name="productMaker" 
										required="required">
								</td>
								<td>
									<input type="text" id="productName" name="productName" 
										required="required">
								</td>
								<td>
									<input type="text" id="productPrice" name="productPrice" 
										required="required">
								</td>
							</tr>
						</tbody>
					</table>
				</div><br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소">
				</div>
			</form>
		</div>
	</div>
</body>
</html>