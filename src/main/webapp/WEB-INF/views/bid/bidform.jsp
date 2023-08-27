<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.size45 {
	width: 49%;
	height: 100%;
	margin: 0 auto;
}

.size50 {
	width: 49%;
	height: 100%;
	margin: 0 auto;
}

.sizef {
	width: 100%;
	height: 45px;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
	background: #ededed;
	box-sizing: border-box;
	font-weight: bold;
}

ul.tabs li {
	background: #ededed;
	color: #aaa;
	display: inline-block;
	padding: 10px 0px;
	cursor: pointer;
	text-align: center;
}

ul.tabs li.current {
	background: #fff;
	color: #222;
	border: solid 1px #000;
}

.tab-content {
	display: none;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
}
</style>
</head>
<body>
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3"
									data-thumb="${p.productimgPath}${p.productimgName1}">
									<div class="wrap-pic-w pos-relative">
										<img src="${p.productimgPath}${p.productimgName1}"
											alt="IMG-PRODUCT"> <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="${p.productimgPath}${p.productimgName1}"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3"
									data-thumb="${p.productimgPath}${p.productimgName2}">
									<div class="wrap-pic-w pos-relative">
										<img src="${p.productimgPath}${p.productimgName2}"
											alt="IMG-PRODUCT"> <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="${p.productimgPath}${p.productimgName2}"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3"
									data-thumb="${p.productimgPath}${p.productimgName3}">
									<div class="wrap-pic-w pos-relative">
										<img src="${p.productimgPath}${p.productimgName3}"
											alt="IMG-PRODUCT"> <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="${p.productimgPath}${p.productimgName3}"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">

						<span class="mtext-106 cl2">${p.productMaker}</span>

						<h4 class="mtext-105 cl2 js-name-detail p-t-23">${p.productName}</h4>

						<p class="stext-102 cl3"></p>

						<!--  -->
						<form action="bidinsert.do" method="post"
							onsubmit="return formCheck()">
							<div class="p-t-33">
								<div class="flex-w p-b-15">
									<div class="sizef respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name=productSize id="productSize">
												<option value=0>사이즈</option>
												<option value=260>260</option>
												<option value=270>270</option>
												<option value=280>280</option>
												<option value=290>290</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w p-b-15">
									<div class="size45">

										<button
											class="flex-c-m stext-101 cl0 sizef bg1 bor999 hov-btn1 p-lr-15 trans-04"
											onclick="showInputPrice()" type="submit">
											<span>${bidType2 } 입찰</span>
										</button>
									</div>
									<div class="size45">

										<input name="productId" hidden="" value="${p.productId}" /> <input
											name="bidType2" hidden="" value="${bidType2 }" /> <input
											name="bidType" hidden="" value="${bidType }" />
										<input name="buttonType" id="buttonType" hidden="" value="bid" />
										<!--  -->
										<button 
											class="flex-c-m stext-101 cl0 bg10000 sizef bor999 hov-btn1 p-lr-15 trans-04"
											onclick="hideInputPrice()" type="submit">
											<span>즉시 ${bidType2 }</span>
										</button>

									</div>
								</div>
								<div id="priceDiv" style="display: none">
									<input type="text" placeholder="입찰가" name="bidPrice"
										id="bidPrice" maxlength="8"
										style="border-style: solid; border-width: 1px; border-color: gray">
								</div>


							</div>
						</form>
					</div>

				</div>

			</div>
		</div>

	</section>
	<script type="text/javascript">
	

	
		function formCheck() {
			let price = document.getElementById("bidPrice").value;
			if(document.getElementById("productSize").value==0){
				return false;
			}else if ($('#priceDiv').css("display") != "none" && isNaN(price) == true) {
				return false;
			}else if ($('#priceDiv').css("display") != "none" && price == "") {
				return false;
			}else if ($('#priceDiv').css("display") == "none" && price == "" && document.getElementById("buttonType").value == "deal"){
				return true;
				}
			return true;
		}
		
		function showInputPrice(){
			let price = document.getElementById("bidPrice").value;
			if($('#priceDiv').css("display") == "none") {
				$('#priceDiv').show();
				document.getElementById("bidPrice").value = "";
				document.getElementById("bidPrice").focus();
			}else if(document.getElementById("productSize").value==0) {
				alert("사이즈를 선택하시오.");
			}else if(isNaN(price) == true) {
				alert("금액을 정확히 입력하시오.");
				document.getElementById("bidPrice").value = "";
				document.getElementById("bidPrice").focus();
			}else if(price == ""){
				alert("금액을 입력하시오.");
				document.getElementById("bidPrice").focus();
			}
		}
		
		function hideInputPrice(){
			if($('#priceDiv').css("display") != "none"){
				$('#priceDiv').hide();
			}
			if(document.getElementById("productSize").value==0) {
				alert("사이즈를 선택하시오.");
			}else{
				document.getElementById("buttonType").value = "deal";
			}
		}
		
			$(document).ready(function() {
				searchList('BUY');
				$('ul.tabs li').click(function() {
				 var tab_id = $(this).attr('data-tab');

					$('ul.tabs li').removeClass('current');
					$('.tab-content').removeClass('current');

					$(this).addClass('current');
					$("#" + tab_id).addClass('current');
				if(tab_id == 'tab-1'){
					searchList('BUY');
				}else{
					searchList('SELL');
				}
				})
					
			})
			
			/*/////////////////////////에이작//////////////////////  */
				function searchList(t) {
			// ajax를 이용해서 검색결과를 화면에 출력
			let pid = ${p.productId};
			let size = document.getElementById("productSize").value;
			let type = t;
			let payload = "pid=" + pid + "&size=" + size + "&type=" + type;
			
			let url = "ajaxbidsearchlist.do";
			
			fetch(url, {
				method:"POST",
				headers:{"content-Type": "application/x-www-form-urlencoded",},
				body: payload
			}).then(response => response.json())
			  .then(json => htmlConvert(json,t));
		}
		
		function htmlConvert(datas,t) {
			document.getElementById(t+'Tbody').remove();
			const tbody = document.createElement('tbody');
			tbody.id = t+'Tbody';
			// tbody에 data 추가
			tbody.innerHTML = datas.map(data => htmlView(data)).join('');
			
			// table tbody 추가
			
			document.getElementById(t+'Tb').appendChild(tbody);
		}
	</script>
</body>
</html>