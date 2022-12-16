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
				<div class="well np">
					<div id="myCarousel" class="carousel slide homCar">
						<div class="carousel-inner">
							<div class="item">
								<img style="width: 100%" src="shop-cart/assets/img/banner1.webp"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>Của hàng sách truyện</h4>
									<p></p>
								</div>
							</div>
							<div class="item">
								<img style="width: 100%" src="shop-cart/assets/img/banner2.jpg"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>Của hàng sách truyện</h4>
									<p></p>
								</div>
							</div>
							<div class="item active">
								<img style="width: 100%" src="shop-cart/assets/img/banner1.webp"
									alt="bootstrap ecommerce templates">
								<div class="carousel-caption">
									<h4>Của hàng sách truyện</h4>
									<p></p>
								</div>
							</div>
							<div class="item">
								<img style="width: 100%" src="shop-cart/assets/img/banner2.jpg"
									alt="bootstrap templates">
								<div class="carousel-caption">
									<h4>Của hàng sách truyện</h4>
									<p></p>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div>
				</div>
				<!--
New Products
-->
				<div class="well well-small">
					<h3>SẢN PHẨM MỚI</h3>
					<hr class="soften" />


					<c:forEach var="i" begin="0" end="${size/4}">
						<div class="row-fluid">
							<div id="newProductCar" class="carousel slide">
								<div class="carousel-inner">
									<div class="item active">
										<ul class="thumbnails">
											<c:if test="${size-1 -i*4-3<0}">
												<c:forEach var="j" begin="${i*4}" end="${(size-1)}">
													<li class="span3">
														<div class="thumbnail">
															<a class="zoomTool"
																href="productDetail?maSP=${listNew[j].getMaSP()}"
																title="add to cart"><span class="icon-search"></span>
																QUICK VIEW</a> <a href="#" class="tag"></a> <a
																href="productDetail?maSP=${listNew[j].getMaSP()}"><img
																src="${listNew[j].getAnh()}" alt="bootstrap-ring"
																style="width: 150px; height: 215px;"></a>
														</div>
													</li>
												</c:forEach>
											</c:if>

											<c:if test="${size-1 -i*4-3>0}">
												<c:forEach var="j" begin="${i*4}" end="${i*4+3}">
													<li class="span3">
														<div class="thumbnail">
															<a class="zoomTool"
																href="productDetail?maSP=${listNew[j].getMaSP()}"
																title="add to cart"><span class="icon-search"></span>
																QUICK VIEW</a> <a href="#" class="tag"></a> <a
																href="productDetail?maSP=${listNew[j].getMaSP()}"><img
																src="${listNew[j].getAnh()}" alt="bootstrap-ring"
																style="width: 150px; height: 215px;"></a>
														</div>
													</li>
												</c:forEach>
											</c:if>

										</ul>
									</div>

								</div>
								<a class="left carousel-control" href="#newProductCar"
									data-slide="prev">&lsaquo;</a> <a
									class="right carousel-control" href="#newProductCar"
									data-slide="next">&rsaquo;</a>
							</div>
						</div>
					</c:forEach>
				</div>
				<!--
	Featured Products
	-->
				<div class="well well-small">
					<h3>Sản phẩm bán chạy</h3>
					<hr class="soften" />
					<div class="row-fluid">
						<ul class="thumbnails">


							<c:forEach items="${featured}" var="i">
								<li class="span4">
									<div class="thumbnail">
										<a class="zoomTool" href="productDetail?maSP=${i.getMaSP()}"
											title="add to cart"><span class="icon-search"></span>
											QUICK VIEW</a> <a href="#" class="tag"></a> <a
											href="productDetail?maSP=${i.getMaSP()}"><img
											src="${i.getAnh()}" alt="bootstrap-ring"
											style="width: 150px; height: 215px;"></a>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
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