<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title></title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="./css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="./css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="./css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="./css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="./css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<c:import url="./header.jsp"></c:import>
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<c:import url="./nav.jsp"></c:import>
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">결제주문</h3>
						<ul class="breadcrumb-tree">
							<li><a href="./">Home</a></li>
							<li class="active">Checkout</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">�?구�?</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_name" name="o_name" placeholder="?���?">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_email" name="o_email" placeholder="?��메일">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_postcode" name="o_postcode" placeholder="?��?��번호">
								<input type="button" onclick="sample4_execDaumPostcode()" value="?��?��번호 찾기" class="primary-btn">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_roadAddress" name="o_roadAddress" placeholder="?��로명주소">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_extraAddress" name="o_extraAddress" placeholder="참고?���?">
							</div>
							<div class="form-group">
								<input class="input" type="text" id="o_detailAddress" name="o_detailAddress" placeholder="?��?��주소">
							</div>
							<div class="form-group">
								<input class="input" type="tel" id="o_tel" name="o_tel" placeholder="?��?��번호">
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" id="o_request" name="o_request" placeholder="?��구사?��" style="resize: none;"></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">주문</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>?��?��</strong></div>
								<div><strong>TOTAL</strong></div>
							</div>
							<div class="order-products">
								<div class="order-col">
									<div>1x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>
								<div class="order-col">
									<div>2x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>
							</div>
							<div class="order-col">
								<div>배송</div>
								<div><strong>FREE</strong></div>
							</div>
							<div class="order-col">
								<div><strong>총금?��</strong></div>
								<div><strong class="order-total">$2940.00</strong></div>
							</div>
						</div>
						
						<div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								결제�? ?��?��겠습?���??
							</label>
						</div>
						<a href="javascript:iamport();" class="primary-btn order-submit">결제</a>
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- FOOTER -->
		<footer id="footer">
			<c:import url="./footer.jsp"></c:import>
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="./js/jquery.min.js"></script>
		<script src="./js/bootstrap.min.js"></script>
		<script src="./js/slick.min.js"></script>
		<script src="./js/nouislider.min.js"></script>
		<script src="./js/jquery.zoom.min.js"></script>
		<script src="./js/main.js"></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
function iamport(){
	//�?맹점 ?��별코?��
	IMP.init('imp56561187');
	IMP.request_pay({
	    pg : 'kg',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '?��?��1' , //결제창에?�� 보여�? ?���?
	    amount : 100, //?��?�� 결제?��?�� �?�?
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매?��?���?',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '?��?�� 강남�? ?��곡동',
	    buyer_postcode : '123-456'
	}, function(rsp) {
		console.log(rsp);
	    if ( rsp.success ) {
	    	var msg = '결제�? ?��료되?��?��?��?��.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '?��?�� 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 ?��?��번호 : ' + rsp.apply_num;
	    } else {
	    	 var msg = '결제?�� ?��?��?��???��?��?��.';
	         msg += '?��?��?��?�� : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
}

function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ?��?��?��?�� �??��결과 ?��목을 ?���??��?��?�� ?��?��?�� 코드�? ?��?��?��?�� �?�?.

            // ?��로명 주소?�� ?���? 규칙?�� ?��?�� 주소�? ?��?��?��?��.
            // ?��?��?��?�� �??���? 값이 ?��?�� 경우?�� 공백('')값을 �?�?�?�?, ?���? 참고?��?�� 분기 ?��?��.
            var roadAddr = data.roadAddress; // ?��로명 주소 �??��
            var extraRoadAddr = ''; // 참고 ?���? �??��

            // 법정?��명이 ?��?�� 경우 추�??��?��. (법정리는 ?��?��)
            // 법정?��?�� 경우 마�?�? 문자�? "?��/�?/�?"�? ?��?��?��.
            if(data.bname !== '' && /[?��|�?|�?]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 ?���?, 공동주택?�� 경우 추�??��?��.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // ?��?��?�� 참고?��목이 ?��?�� 경우, 괄호까�? 추�??�� 최종 문자?��?�� 만든?��.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // ?��?��번호?? 주소 ?��보�?? ?��?�� ?��?��?�� ?��?��?��.
            document.getElementById('o_postcode').value = data.zonecode;
            document.getElementById("o_roadAddress").value = roadAddr;
            
            // 참고?���? 문자?��?�� ?��?�� 경우 ?��?�� ?��?��?�� ?��?��?��.
            if(roadAddr !== ''){
                document.getElementById("o_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("o_extraAddress").value = '';
            }

        }
    }).open();
}
</script>
	</body>
</html>
