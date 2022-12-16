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
					<li class="active">PassChange</li>
				</ul>
				<h3>THay đổi mật khẩu</h3>
				<hr class="soft" />


				<div class="well">
					<form id="form-order" class="form-horizontal">
						<div class="control-group">
							<label class="control-label" for="inputFname">Nhập mật khẩu mới <sup>*</sup>
							</label>
							<div class="controls">
								<input type="password" id="newPass" placeholder="New Password"
									name="newPass">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputFname">Nhập lại mật khẩu <sup>*</sup>
							</label>
							<div class="controls">
								<input type="password" id="password" placeholder="New Password"
									name="password">
							</div>
						</div>
					
				
						<div class="control-group">	
							<button class="shopBtn btn-large" onclick="formvalidate()">
							Xác nhận<span class="exclusive"></span>
						</button>
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
<script>
	function formvalidate() {
		var resutl = true;
		var newPass = document.getElementById("newPass").value;
		var password =document.getElementById("password").value;

		if (newPass != password) {
			resutl=false;
		}
		
		if (resutl == true) {
			callServlet();
		} else {
			alert("Mật khẩu không khớp");
		}
	}
	function callServlet() {
		document.getElementById("form-order").action = "changepass";
		document.getElementById("form-order").method = "post";
		document.getElementById("form-order").submit();
	}
</script>
</html>