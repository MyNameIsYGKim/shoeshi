<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<body>
	<section class="bg0 p-t-23 p-b-140">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">신규 발매</h3>
			</div>

			<div class="row isotope-grid">
				<c:forEach items="${products}" var="p">
					<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<a onclick="selectProduct(${p.productId})" href="#"><img src="${p.productimgPath}${p.productimgName1}"
									alt="IMG-PRODUCT"></a>


							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="#"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> <!-- 제조사 -->${p.productMaker}
									</a> <a
										class="move stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"
										href ="#" onclick="selectProduct(${p.productId})"> ${p.productName}</a>
									<span class="stext-105 cl3"> <!-- 가격 --> <fmt:formatNumber
											value="${p.productPrice}" pattern="###,###,###원" />
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="coza/images/icons/icon-heart-01.png" alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="coza/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>



			<!-- Load more -->

			<div class="flex-c-m flex-w w-full p-t-45">
				<a href="productlist.do"
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					더보기 </a>
			</div>
		</div>
		<div>
			<form id="frm" action="productselect.do" method="get">
				<input type="hidden" id="productId" name="productId">
			</form>
		</div>
	</section>
	<script type="text/javascript">
		function selectProduct(p) {
			document.getElementById("productId").value = p;
			document.getElementById("frm").submit();
		}
	</script>
</body>
</html>