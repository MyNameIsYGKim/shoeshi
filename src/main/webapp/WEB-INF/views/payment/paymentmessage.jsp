<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>케이마켓::대한민국 1등 온라인 쇼핑몰</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://kit.fontawesome.com/20962f3e4b.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="./css/product.css">
<style>
a {
	text-decoration: none;
}

#product {
	margin: 50px 30px;
}

#product>.complete>.message>h2 {
	font-size: 32px;
	font-weight: bold;
	text-align: left;
	color: #000;
	padding: 0px;
}

#product>.complete>.message>h2>i {
	font-size: 26px;
}

#product>.complete>.message>p {
	font-size: 18px;
	font-weight: bold;
	padding: 10px;
	text-align: center;
}

#product>.complete>article {
	margin-top: 16px;
}

#product>.complete>article>h1 {
	font-weight: bold;
	font-size: 14px;
	color: #111;
	padding: 6px 0;
}

#product>.complete table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	border-top: 2px solid #000;
}

#product>.complete table tr:last-child {
	border-bottom: 1px solid #d3d3d3;
}

#product>.complete table tr>th {
	padding: 12px 0;
	background: #fff;
	color: #383838;
	font-size: 0.95em;
	text-align: center;
	letter-spacing: -0.1em;
}
/* 상품정보 */
#product>.complete>.info>table tr>th:last-child {
	width: 100px;
	padding-right: 10px;
}

#product>.complete>.info table tr>td {
	
}

#product>.complete>.info table tr>td:last-child {
	color: #ff006c;
	font-weight: bold;
	text-align: right;
	padding-right: 10px;
}

#product>.complete>.info table tr>td>article {
	overflow: hidden;
	padding: 6px;
}

#product>.complete>.info table tr>td img {
	float: left;
	width: 80px;
}

#product>.complete>.info table tr>td div {
	float: left;
	margin-left: 10px;
	text-align: left;
}

#product>.complete>.info table tr>td div>p {
	text-align: left;
	color: #777;
	margin-top: 4px;
}

#product>.complete>.info .total>td>table {
	border: none;
}

#product>.complete>.info .total>td>table tr {
	border: none;
}

#product>.complete>.info .total>td>table td {
	text-align: right;
	color: #111;
	background: #fff;
	font-weight: normal;
	border-bottom: none;
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.info>table tr>th:nth-child(1) {
	width: auto;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>.info>table tr>td:nth-child(1) {
	width: auto;
	text-align: left;
	padding-left: 10px;
}

#product>.complete>.info table tr>th:nth-child(2) {
	width: auto;
}

#product>.complete>.info table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>.info table tr>th:nth-child(3) {
	width: 100px;
	text-align: center;
}

#product>.complete>.info table tr>td:nth-child(3) {
	width: 100px;
	text-align: center;
}

#product>.complete>.info table tr>th:nth-child(4) {
	width: 100px;
	text-align: right;
	padding-right: 10px;
	vertical-align: top;
}
/* 주문정보 */
#product>.complete>.order table tr>td {
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.order>table tr>td:nth-child(1) {
	width: 160px;
	background: #fff;
}

#product>.complete>.order table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>.order table tr>td:nth-child(3) {
	width: 100px;
	text-align: right;
	vertical-align: top;
}

#product>.complete>.order table tr>td:nth-child(4) {
	width: 100px;
	text-align: right;
	vertical-align: top;
}

#product>.complete>.order table span {
	font-weight: bold;
	color: #000c;
}
/* 배송정보 */
#product>.complete>.delivery table tr>td:nth-child(1) {
	width: 160px;
	background: #fff;
}

#product>.complete>.delivery table tr>td {
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.delivery table tr>td:last-child {
	text-align: right;
}
/* 꼭 알아두세요 */
#product>.complete>.alert {
	width: 100%;
	background-color: #fff;
	padding: 10px;
	padding-left: 24px;
	color: #999;
	box-sizing: border-box;
}

#product>.complete>.alert>h1 {
	margin-left: -12px;
}

#product>.complete>.alert>ul {
	list-style: inherit;
}

#product>.complete>.alert>ul>li {
	line-height: 20px;
}

#product>.complete>.alert>ul>li>span {
	position: relative;
	left: -6px;
}

h1 {
	margin-top: 20px;
}

#wrapper {
	margin-top: 20px;
	height: 100vh;
}
.signup-title {
	text-align: left;
	font-weight: bold;

}
</style>

</head>
<body>
    <div id="wrapper">
        
        <main id="product">
           
            <section class="complete">
                
                <article class="message">
                    <h2 id="sellTitle">
                        고객님의 주문이 정상적으로 완료되었습니다.
                        <i class="far fa-smile" aria-hidden="true"></i>
                    </h2>
                    
                </article>
                <!-- 상품정보 -->
                <article class="info">
                    <h1>상품정보</h1>
                    <table border="0">
                        <tr>
                            <th>상품명</th>
                            <th>상품금액</th>
                            <th>할인금액</th>
                            <th>수량</th>
                            <th id="selltobuy">주문금액</th>
                        </tr>
                        <tr>
                            <td>
                                <article>
                                    <img src="${p.productimgPath}${p.productimgName2}"
										alt="IMG-PRODUCT">
                                    <div>
                                        <h2>
                                            <a href="productselect.do?productId=${p.productId }">${p.productName }</a>
                                        </h2>
                                        <p>${p.productMaker}</p>
                                    </div>
                                </article>
                            </td>
                            <td>${dealPrice }원</td>
                            <td>0원</td>
                            <td>1</td>
                            <td>${dealPrice }원</td>
                        </tr>
                        
                        
                    </table>
                </article>
                <!-- 주문정보 -->
                <article class="order">
                    <h1 id="dealinfo">주문정보</h1>
                    <table border="0">
                        <tr>
                            <td id="dealNo">주문번호</td>
                            <td>${dealNo }</td>
                            <td id="dealPrice" rowspan="3">총 결제금액</td>
                            <td rowspan="3">
                                <span>${dealPrice }</span>원
                            </td>
                        </tr>
                        <tr id="howPay">
                            <td id="dealType">결제방법</td>
                            <td>${payment }</td>
                        </tr>
                        <tr>
                            <td id="clientVO">주문자/연락처</td>
                            <td>${clientName }/0${clientTel }</td>
                        </tr>
                    </table>
                </article>
                <!-- 배송정보 -->
                <article class="delivery">
                    <h1 id="sendInfo">배송정보</h1>
                    <table border="0">
                        <tr>
                            <td id="who">수취인</td>
                            <td>${clientName }</td>
                            <td id="whoInfo">주문자 정보</td>
                        </tr>
                        <tr>
                            <td>연락처</td>
                            <td>0${clientTel }</td>
                            <td rowspan="2">
                                ${clientName }
                                <br> 0${clientTel }
                            </td>
                        </tr>
                        <tr>
                            <td id="clientAddress">배송지 주소</td>
                            <td>${clientAddress}</td>
                        </tr>
                    </table>
                </article>
               
            </section>
        </main>
       
    </div>
</body>
<script type="text/javascript">
$(function(){
		if("${payment}"==""){
			$('#howPay').hide();
			$('#sellTitle').text("고객님의 판매가 정상적으로 진행되었습니다.");
			$('#dealinfo').text("판매정보");
			$('#dealNo').text("판매번호");
			$('#dealPrice').text("총 판매금액");
			$('#clientVO').text("판매자/연락처");
			$('#sendInfo').text("발송정보");
			$('#who').text("발송인");
			$('#whoInfo').text("판매자 정보");
			$('#selltobuy').text("판매자 정보");
			$('#clientAddress').text("판매금액");
		}
})
</script>
</html>