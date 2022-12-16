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
		<%@include file="./lowerHeader.jsp"%>

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
				<h3>Registration</h3>
				<hr class="soft" />


				<div class="well">
					<form action="signup" class="form-horizontal" method="post">
						<a>${mess1}</a>

						<div class="control-group">
							<label class="control-label" for="inputFname">Họ tên <sup>*</sup>
							</label>
							<div class="controls">
								<input type="text" id="inputFname" placeholder="Họ tên"
									name="fullname">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Tên Tài Khoản <sup>*</sup></label>
							<div class="controls">
								<input type="text" placeholder="Tên Tài Khoản" name="username">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputEmail">Email <sup>*</sup></label>
							<div class="controls">
								<input type="text" placeholder="Email" name="email">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputLname">Số điện
								thoại <sup>*</sup>
							</label>
							<div class="controls">
								<input type="text" id="inputLname" placeholder="Số điện thoại"
									name="phone">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Mật khẩu <sup>*</sup></label>
							<div class="controls">
								<input type="password" placeholder="Mật khẩu" name="password">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Nhập lại mật khẩu <sup>*</sup></label>
							<div class="controls">
								<input type="password" placeholder="Nhập lại mật khẩu mới"
									name="repassword">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<input type="submit" name="submitAccount" value="Đăng ký"
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
				<a href="#"><img src="assets/img/maestro.png" alt="payment"></a>
				<a href="#"><img src="assets/img/mc.png" alt="payment"></a> <a
					href="#"><img src="assets/img/pp.png" alt="payment"></a> <a
					href="#"><img src="assets/img/visa.png" alt="payment"></a> <a
					href="#"><img src="assets/img/disc.png" alt="payment"></a>
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
	<script>

    document.querySelectorAll('[data-type="money"]').forEach(item => {

        item.innerHTML = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'vnd'}).format(item.innerHTML);
    })
</script>
</body>
</html>