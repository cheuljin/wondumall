<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>category</title>

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
<style type="text/css">
tr{
max-width: 996px;
margin-left: auto;
margin-right: auto;
margin-bottom: 20px;
}
</style>
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
	
	<br>
	<%-- ${productList} --%>
	<div class="section">
		<div class="container">
			<div class="row">
				<h2>category test</h2>
				<table class="table table-bordered">
					<c:forEach items="${productList}" var="p">
						<tr onclick="location.href='./productDetail.do?p_no=${p.p_no}'">
							<td><img src="./productUpload/${p.p_img}" style="width: 200px; height: 200px;"></td>
							<td><a href="./productDetail.do"> 상품번호 : ${p.p_no} &nbsp; </a></td>
							<td> 상품명 : ${p.p_name} &nbsp; </td>
							<td> 카테고리 번호 : ${p.cate_no} / </td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	
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
</body>
</html>