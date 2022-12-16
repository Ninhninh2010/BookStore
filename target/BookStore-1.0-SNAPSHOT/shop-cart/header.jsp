<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<link rel="shop-cart/shortcut icon"
	href="shop-cart/assets/ico/favicon.ico">
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="https://www.facebook.com/profile.php?id=100011765593578"><span
							class="icon-facebook"></span></a> <a href="https://www.instagram.com/mq_21112002/"><span
							class="icon-instagram"></span></a>
							<a href="https://www.youtube.com/channel/UC3ehAVqOKDCkCdC5fhSrmsg"><span
							class="icon-youtube"></span></a>
					</div>
					<a class="active" href="http://localhost:8080/BookStore"> <span
						class="icon-home"></span> Home
					</a> <a class="active" href="Ad_LoginControl"> <span
						class="icon-home"></span> Login Admin
					</a>
					<c:if test="${sessionScope.acc != null}">
						<a href="User"><span class="icon-user"></span> My Account</a>

						<a href="UserOrder"><span class="icon-user"></span> Đơn hàng</a>
					</c:if>
					<c:if test="${sessionScope.acc == null}">
						<a href="signup"><span class="icon-user"></span> Sign Up</a>
					</c:if>
					<a href="CartControl"><span class="icon-shopping-cart"></span>
						Giỏ hàng </a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>