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
<<<<<<< HEAD
.tdc {
	text-align: center;
}
=======
.tdc{
text-align: center;
}

>>>>>>> branch 'master' of https://github.com/MyNameIsYGKim/shoeshi.git

.leftgo {
	position: relative;
	right: 0;
}

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
						<div class="p-t-33">
							<div class="flex-w p-b-15">
								<div class="sizef respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="size" id="size"
											onchange="searchList('BUY')">
											<option value="0">모든 사이즈</option>
											<option value="260">260</option>
											<option value="270">270</option>
											<option value="280">280</option>
											<option value="290">290</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>




							<form action="bidform.do" method="post">
								<div class="flex-w p-b-15">
									<div class="size45">
										<button id="BUYBtn"
											class="flex-c-m stext-101 cl0 sizef bg1 bor999 hov-btn1 p-lr-15 trans-04"
											onclick="typeB()">
											<span id="BUYPrice"></span>&nbsp;<span class="leftgo"></span><span>구매</span>
										</button>
									</div>

									<div class="size45">
										<button id="SELLBtn"
											class="flex-c-m stext-101 cl0 bg10000 sizef bor999 hov-btn1 p-lr-15 trans-04"
											onclick="typeS()">
											<span id="SELLPrice"></span>&nbsp;<span class="leftgo">판매</span>
										</button>

									</div>

									<!-- ///////////////입찰타입 설정하고 가져가기///////////////// -->
									<input type="hidden" id="bidType" name="bidType" value="" />
									<!-- ///////////////입찰타입 가져가서 페이지설정///////////////// -->
									<input type="hidden" id="bidType2" name="bidType2" value="" />
									<!-- ///////////////제품번호 가져가기//////////////////// -->
									<input name="productId" type="hidden" value="${p.productId}" />

								</div>
							</form>



						
							<div class="flex-w p-b-15">
								<div class="table-wrap sizef ">

									<ul class="tabs sizef bor999">
										<li class="tab-link current size50 bor999" data-tab="tab-1">구매
											입찰</li>
										<li class="tab-link size50 bor999" data-tab="tab-2">판매 입찰</li>

									</ul>

									<div id="tab-1" class="tab-content current">
										<table class="table" id="BUYTb">
											<thead class="thead-dark">
												<tr>
													<th>수량</th>
													<th>사이즈</th>
													<th>구매 입찰가</th>
												</tr>
											</thead>
											<tbody id="BUYTbody">

												<c:forEach items="${bidList}" var="l">
													<tr class="alert" role="alert">
														<td class="tdc" colspan="4"></td>
													</tr>
												</c:forEach>

											</tbody>

										</table>
									</div>
									<div id="tab-2" class="tab-content">
										<table class="table" id="SELLTb">
											<thead class="thead-dark">
												<tr>
													<th>수량</th>
													<th>사이즈</th>
													<th>판매 입찰가</th>
												</tr>
											</thead>
											<tbody id="SELLTbody">

												<c:forEach items="${bidList}" var="l">
													<tr class="alert" role="alert">
														<td class="tdc" colspan="4"></td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

				<!--  -->
				<div class="flex-w flex-m p-l-100 p-t-40 respon7">
					<div class="flex-m bor9 p-r-10 m-r-11">
						<a href="#"
							class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
							data-tooltip="Add to Wishlist"> <i class="zmdi zmdi-favorite"></i>
						</a>
					</div>

					<a href="#"
						class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
						data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
					</a> <a href="#"
						class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
						data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
					</a> <a href="#"
						class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
						data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
					</a>
				</div>
			</div>
		</div>



		<div class="bor10 m-t-50 p-t-43 p-b-40">
			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item p-b-10"><a class="nav-link active"
						data-toggle="tab" href="#description" role="tab">Description</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#information" role="tab">Additional
							information</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#reviews" role="tab">Reviews (1)</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-43">
					<!-- - -->
					<div class="tab-pane fade show active" id="description"
						role="tabpanel">
						<div class="how-pos2 p-lr-15-md">
							<p class="stext-102 cl6">Aenean sit amet gravida nisi. Nam
								fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in
								blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit
								lectus interdum. Morbi elementum sapien rhoncus pretium maximus.
								Nulla lectus enim, cursus et elementum sed, sodales vitae eros.
								Ut ex quam, porta consequat interdum in, faucibus eu velit.
								Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit
								amet orci nec iaculis. Cras sit amet nulla libero. Curabitur
								dignissim, nunc nec laoreet consequat, purus nunc porta lacus,
								vel efficitur tellus augue in ipsum. Cras in arcu sed metus
								rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</p>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="information" role="tabpanel">
						<div class="row">
							<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
								<ul class="p-lr-28 p-lr-15-sm">
									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Weight </span> <span
										class="stext-102 cl6 size-206"> 0.79 kg </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Dimensions </span> <span
										class="stext-102 cl6 size-206"> 110 x 33 x 100 cm </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Materials </span> <span
										class="stext-102 cl6 size-206"> 60% cotton </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Color </span> <span
										class="stext-102 cl6 size-206"> Black, Blue, Grey,
											Green, Red, White </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Size </span> <span
										class="stext-102 cl6 size-206"> XL, L, M, S </span></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="reviews" role="tabpanel">
						<div class="row">
							<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
								<div class="p-b-30 m-lr-15-sm">
									<!-- Review -->
									<div class="flex-w flex-t p-b-68">
										<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
											<img src="coza/images/avatar-01.jpg" alt="AVATAR">
										</div>

										<div class="size-207">
											<div class="flex-w flex-sb-m p-b-17">
												<span class="mtext-107 cl2 p-r-20"> Ariana Grande </span> <span
													class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i
													class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i>
													<i class="zmdi zmdi-star"></i> <i
													class="zmdi zmdi-star-half"></i>
												</span>
											</div>

											<p class="stext-102 cl6">Quod autem in homine
												praestantissimum atque optimum est, id deseruit. Apud
												ceteros autem philosophos</p>
										</div>
									</div>

									<!-- Add review -->
									<form class="w-full">
										<h5 class="mtext-108 cl2 p-b-7">Add a review</h5>

										<p class="stext-102 cl6">Your email address will not be
											published. Required fields are marked *</p>

										<div class="flex-w flex-m p-t-50 p-b-23">
											<span class="stext-102 cl3 m-r-16"> Your Rating </span> <span
												class="wrap-rating fs-18 cl11 pointer"> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <input
												class="dis-none" type="number" name="rating">
											</span>
										</div>

										<div class="row p-b-25">
											<div class="col-12 p-b-5">
												<label class="stext-102 cl3" for="review">Your
													review</label>
												<textarea
													class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
													id="review" name="review"></textarea>
											</div>

											<div class="col-sm-6 p-b-5">
												<label class="stext-102 cl3" for="name">Name</label> <input
													class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
													type="text" name="name">
											</div>

											<div class="col-sm-6 p-b-5">
												<label class="stext-102 cl3" for="email">Email</label> <input
													class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
													type="text" name="email">
											</div>
										</div>

										<button
											class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
											Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
			<span class="stext-107 cl6 p-lr-25"> SKU: JAK-01 </span> <span
				class="stext-107 cl6 p-lr-25"> Categories: Jacket, Men </span>
		</div>
	</section>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		let alertBid = "${alertBid}";
		if(alertBid != ""){		
		alert(alertBid);
		alertBid = "";
		}
});

		function typeS() {
			document.getElementById("bidType").value = 'SELL';
			document.getElementById("bidType2").value = '판매';
		}

		function typeB() {
			document.getElementById("bidType").value = 'BUY';
			document.getElementById("bidType2").value = '구매';
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
		let size = document.getElementById("size").value;
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
		let type;
		if(t=='SELL'){
			type ='판매';
		}else{
			type ='구매';
		}
		
		if(datas.b !=null){
			var b = datas.b.buyPrice;
			document.getElementById('BUYPrice').innerHTML = b+'원';			
		}else{
			document.getElementById('BUYPrice').innerHTML = '- 원';
		}
		
		if(datas.s !=null){
			var s = datas.s.sellPrice;
			document.getElementById('SELLPrice').innerHTML = s+'원';			
		}else{
			document.getElementById('SELLPrice').innerHTML = '- 원';	
		}
						
		// tbody에 data 추가
		if(datas.l.length!=0){
			document.getElementById(t+'Tbody').remove();
			const tbody = document.createElement('tbody');
			tbody.id = t+'Tbody';
			tbody.innerHTML = datas.l.map(data => htmlView(data)).join('');
			document.getElementById(t+'Tb').appendChild(tbody);
		}else{
			document.getElementById(t+'Tbody').innerHTML = type+ ' 입찰내역이 없습니다.';
		}
		
		// table tbody 추가
		
		
	}
	
	
	function htmlView(data) {
		
		return `
		<tr class="alert" role="alert">
			<td>\${data.bCount}</td>
			<td>\${data.productSize}</td>
			<td>\${data.bidPrice}원</td>
		</tr>
		`
	}
	
function htmlViewNull(data,t) {
		
		return `
		<tr class="alert" role="alert">
			<td cols="3">입찰 내역이 없습니다.</td>
			
		</tr>
		`
	}
	</script>
</body>
</html>