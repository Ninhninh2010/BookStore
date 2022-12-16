<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8">
<title>Twitter Bootstrap shopping cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="shop-cart/assets/css/bootstrap.css" rel="stylesheet" />
<!-- Customize styles -->
<link href="shop-cart/style.css" rel="stylesheet" />
<!-- font awesome styles -->
<link href="shop-cart/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<!-- Favicons -->
<link rel="shortcut icon" href="shop-cart/assets/ico/favicon.ico">
</head>
<body>
	<%@include file="./header.jsp"%>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<header id="header">
			<div class="row">
				<div class="span4">
					<h1>
						<a class="logo" href="index.html"><span>Twitter
								Bootstrap ecommerce template</span> <img
							src="assets/img/logo-bootstrap-shoping-cart.png"
							alt="bootstrap sexy shop"> </a>
					</h1>
				</div>
				<div class="span4">
					<div class="offerNoteWrapper">
						<h1 class="dotmark">
							<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
							template is available @ $14
						</h1>
					</div>
				</div>
				<div class="span4 alignR">
					<p>
						<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
						<br>
					</p>
					<span class="btn btn-mini">[ 2 ] <span
						class="icon-shopping-cart"></span></span> <span
						class="btn btn-warning btn-mini">$</span> <span
						class="btn btn-mini">&pound;</span> <span class="btn btn-mini">&euro;</span>
				</div>
			</div>
		</header>

		<!--
Navigation Bar Section 
-->
		<%@include file="./navbar.jsp"%>
		<!-- 
Body Section 
-->
		<div class="row">
			<div id="sidebar" class="span3">

				<%@include file="./sidebar.jsp"%>
			</div>
			<div class="span9">
				<ul class="breadcrumb">
					<li><a href="http://localhost:8080/BookStore">Home</a> <span
						class="divider">/</span></li>
					<li class="active">User</li>
				</ul>
				<h3>Xác nhận</h3>
				<hr class="soft" />


				<div class="well">
					<form action="verify" class="form-horizontal" method="post">
						<a>${mess2}</a>
						<div class="control-group">
							<label class="control-label" for="inputFname">Vui lòng
								nhập mã xác nhận <sup>*</sup>
							</label>
							<div class="controls">
								<input type="text" id="inputFname" placeholder="Mã xác nhận"
									name="verify">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<input type="submit" name="submitAccount" value="Xác nhận"
									class="shopBtn exclusive">
							</div>
						</div>
					</form>
				</div>





			</div>
		</div>
		<!-- 
Clients 
-->


		<!--
Footer
-->
		<%@include file="./footer.jsp"%>
	</div>
	<!-- /container -->

	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				
			</p>
			<span>Copyright &copy; 2013<br> bootstrap ecommerce
				shopping template
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="shop-cart/assets/js/jquery.js"></script>
	<script src="shop-cart/assets/js/bootstrap.min.js"></script>
	<script src="shop-cart/assets/js/jquery.easing-1.3.min.js"></script>
	<script src="shop-cart/assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="shop-cart/assets/js/shop.js"></script>
</body>
</html>