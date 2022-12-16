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
<link rel="shop-cart/shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>
	<div class="well well-small">
		<ul class="nav nav-list">

			<c:forEach items="${listlSp}" var="i">

				<li><a href="loaisp?maLSP=${i.getMaLoai()}"><span
						class="icon-chevron-right"></span> ${i.getTenLoai()}</a></li>

			</c:forEach>
		</ul>
	</div>




	<a class="shopBtn btn-block" href="#" style="background-color:green;">Sản phẩm sắp về <br></a>
	<br>
	<br>
	<ul class="nav nav-list promowrapper">
		<c:forEach items="${chuaramat}" var="i">
			<li>
				<div class="thumbnail">
					<!-- 				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a> -->
					<img src="${i.getAnh()}" alt="bootstrap ecommerce templates">
					<div class="caption">
						<h4>
							<a class="defaultBtn" href="productDetail?maSP=${i.getMaSP()}">VIEW</a>
							<span class="pull-right" data-type="money">${i.getGiaBanThuong()}</span>
						</h4>
					</div>
				</div>
			</li>
		</c:forEach>
	</ul>


</body>
</html>