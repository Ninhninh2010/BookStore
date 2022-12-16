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
				<!-- 
New Products
-->
				<div class="well well-small">
					<h3>Our Products</h3>
					<c:if test="${listSPSize != 0}">
						<c:forEach var="i" begin="0" end="${listSPSize/3}">
							<div class="row-fluid">
								<ul class="thumbnails">
									<c:if test="${listSPSize-1 -i*3-2<=0}">
										<c:forEach var="j" begin="${i*3}" end="${(listSPSize-1)}">
											<li class="span4">
												<div class="thumbnail">
													<a href="product_details.html" class="overlay"></a> <a
														class="zoomTool"
														href="productDetail?maSP=${listSP[j].getMaSP()}"
														title="add to cart"><span class="icon-search"></span>
														QUICK VIEW</a> <a
														href="productDetail?maSP=${listSP[j].getMaSP()}"><img
														src="${listSP[j].getAnh()} " style="height: 310px;" alt=""></a>
													<div class="caption cntr">
														<h3>${listSP[j].getTenSP()}</h3>
														<p>
															<strong><span data-type="money">${listSP[j].getGiaBanThuong()}</span></strong>
														</p>
														<h4>
															<c:if test="${listSP[j].getSoLuong()>0}">
																<a class="shopBtn"
																	href="buy?id=${listSP[j].getMaSP()}&maLSP=${maLSP}"
																	title="add to cart"> Add to cart </a>
															</c:if>
														</h4>
														<div class="actionList">
															<a class="pull-left" href="#">Add to Wish List </a> <a
																class="pull-left" href="#"> Add to Compare </a>
														</div>
														<br class="clr">
													</div>
												</div>
											</li>
										</c:forEach>
									</c:if>


									<c:if test="${listSPSize-1 -i*3-2>0}">
										<c:forEach var="j" begin="${i*3}" end="${i*3+2}">
											<li class="span4">
												<div class="thumbnail">
													<a href="product_details.html" class="overlay"></a> <a
														class="zoomTool"
														href="productDetail?maSP=${listSP[j].getMaSP()}"
														title="add to cart"><span class="icon-search"></span>
														QUICK VIEW</a> <a
														href="productDetail?maSP=${listSP[j].getMaSP()}"><img
														src="${listSP[j].getAnh()} " style="height: 310px;" alt=""></a>
													<div class="caption cntr">
														<h3>${listSP[j].getTenSP()}</h3>
														<p>
															<strong><span data-type="money">${listSP[j].getGiaBanThuong()}</span></strong>
														</p>
														<h4>
															<c:if test="${listSP[j].getSoLuong()>0}">
																<a class="shopBtn"
																	href="buy?id=${listSP[j].getMaSP()}&maLSP=${maLSP}"
																	title="add to cart"> Add to cart </a>
															</c:if>
														</h4>
														<div class="actionList">
															<a class="pull-left" href="#">Add to Wish List </a> <a
																class="pull-left" href="#"> Add to Compare </a>
														</div>
														<br class="clr">
													</div>
												</div>
											</li>
										</c:forEach>
									</c:if>
								</ul>
							</div>
						</c:forEach>
					</c:if>
				</div>

			</div>
		</div>
	</div>
	<!-- 
Clients 
-->
	<section class="our_client">
		<hr class="soften" />
		<h4 class="title cntr">
			<span class="text">Manufactures</span>
		</h4>
		<hr class="soften" />
		<div class="row">
			<div class="span2">
				<a href="#"><img alt="" src="assets/img/1.png"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt="" src="assets/img/2.png"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt="" src="assets/img/3.png"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt="" src="assets/img/4.png"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt="" src="assets/img/5.png"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt="" src="assets/img/6.png"></a>
			</div>
		</div>
	</section>

	<!--
Footer
-->
	<%@include file="./footer.jsp"%>

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
	
	<script>

    document.querySelectorAll('[data-type="money"]').forEach(item => {

        item.innerHTML = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'vnd'}).format(item.innerHTML);
    })
</script>
</body>
</html>