<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="root" />
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
</head>
<body>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<a data-target=".nav-collapse" data-toggle="collapse"
					class="btn btn-navbar"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="http://localhost:8080/BookStore">Home
						</a></li>

					</ul>

					<form action="search" class="navbar-search pull-left" method="get"
						style="max-width: 100%;">
						<input name="txt" type="text" placeholder="Search"
							class="search-query span2" style="width: 720px;">
					</form>



					<ul class="nav pull-right">



						<c:if test="${sessionScope.acc == null}">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"><span class="icon-lock"></span>
									Login <b class="caret"></b></a>
								<div class="dropdown-menu">
									<form class="form-horizontal loginFrm" action="Login"
										method="post">
										<c:if test="${mess != null}">
											<script>
												alert("Đăng nhập thất bại");
											</script>
										</c:if>
										<div class="control-group">
											<input type="text" class="span2" id="inputEmail"
												placeholder="Username" name="username">
										</div>
										<div class="control-group">
											<input type="password" class="span2" id="inputPassword"
												placeholder="Password" name="password">
										</div>
										<div class="control-group">
											<label class="checkbox"> <input type="checkbox">
												Remember me
											</label>
											<button type="submit" class="shopBtn btn-block">Sign
												in</button>
											<a href="signup" class="shopBtn btn-block"
												style="background-color: red;!important">Sign Up</a> <a
												href="email" class="shopBtn btn-block"
												style="background-color: red;!important">Quên tài khoản</a>
										</div>
									</form>
								</div></li>
						</c:if>





						<c:if test="${sessionScope.acc != null}">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"> ${sessionScope.acc.tenKH}
									<b class="caret"></b>
							</a>
								<div class="dropdown-menu">
									<form class="form-horizontal loginFrm" action="LogOut"
										method="post">

										<div class="control-group">

											<button type="submit" class="shopBtn btn-block">Log
												Out</button>
										</div>
									</form>
								</div></li>
						</c:if>




					</ul>

				</div>
			</div>
		</div>
	</div>
</body>
</html>