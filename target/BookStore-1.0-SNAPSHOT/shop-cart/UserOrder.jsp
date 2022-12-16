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

				<c:if test="${size>0}">
					<table class="table m-0">
						<thead>
							<tr>
								<th>ID đặt hàng</th>
								<th>Khách hàng</th>
								<th>Trạng thái</th>
								<th>Ngày đặt</th>
								<th>Chi Tiết</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" begin="0" end="${size-1 }">
								<tr>
									<td><a>${list[i].getMaDH()}</a></td>
									<td>${listName[i]}</td>

									<c:if test="${list[i].getMaTrangThai()==1}">
										<td><span class="badge badge-success">Chưa xác
												nhận</span></td>
									</c:if>
									<c:if test="${list[i].getMaTrangThai()==2}">
										<td><span class="badge badge-success">Đã xác nhận</span></td>
									</c:if>
									<c:if test="${list[i].getMaTrangThai()==3}">
										<td><span class="badge badge-success">Đang giao</span></td>
									</c:if>
									<c:if test="${list[i].getMaTrangThai()==4}">
										<td><span class="badge badge-success">Đã giao</span></td>
									</c:if>
									<c:if test="${list[i].getMaTrangThai()==5}">
										<td><span class="badge badge-success">Thất bại</span></td>
									</c:if>
									
									<td>
										<div class="sparkbar" data-color="#00a65a" data-height="20">${list[i].getThoiGian()}</div>
									</td>
									<td><a href="UserOrderDetail?id=${list[i].getMaDH()}"
										class="btn btn-sm btn-secondary ">Chi tiết</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<a href="http://localhost:8080/BookStore"
					class="btn btn-sm btn-secondary ">Back</a>


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
			<p class="pull-right"></p>
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