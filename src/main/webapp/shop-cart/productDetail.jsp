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
				<ul class="breadcrumb">
					<li><a href="index.html">Home</a> <span class="divider">/</span></li>
					<li><a href="products.html">Items</a> <span class="divider">/</span></li>
					<li class="active">Preview</li>
				</ul>
				<div class="well well-small">
					<div class="row-fluid">
						<div class="span5">
							<div id="myCarousel" class="carousel slide cntr">
								<div class="carousel-inner">
									<div class="item active">
										<a href="#"> <img src="${SanPham.getAnh()}" alt=""
											style="width: 100%"></a>
									</div>

								</div>
							</div>
						</div>
						<div class="span7">
							<h3>${SanPham.getTenSP()}</h3>
							<hr class="soft" />

							<form action="buy" class="form-horizontal qtyFrm" method="post">
								<input type="hidden" name="id" class="span6" placeholder="Qty."
									value="${SanPham.getMaSP()}">
								<div class="control-group">
									<label class="control-label"><span data-type="money">${SanPham.getGiaBanThuong()}
											</span></label>

								</div>


								<h4>
									<a>${SanPham.getSoLuong()}</a> sản phẩm còn hàng
								</h4>
								<p>Mô tả : ${SanPham.getMoTaNgan()}</p>
								<c:if test="${SanPham.getSoLuong()>0}">
									<button type="submit" class="shopBtn">
										<span class=" icon-shopping-cart"></span> Add to cart
									</button>
								</c:if>
								<c:if test="${SanPham.getSoLuong()==0}">
									<span class=" icon-shopping-cart"
										style="font-size: 20px; background-color: yellow;"> Sản
										phẩm sớm có hàng !</span>
								</c:if>
							</form>
						</div>
					</div>
					<hr class="softn clr" />
				</div>

				<div class="well well-small">
					<h3>Nội dung chi tiết</h3>
					<hr class="soften" />
					<div class="row-fluid">${SanPham.getMoTa()}</div>
				</div>


				<div class="well well-small">
					<h3>Sản phẩm liên quan</h3>
					<hr class="soften" />
					<div class="row-fluid">
						<ul class="thumbnails">


							<c:forEach items="${listsplq}" var="i">
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

		<!-- Body wrapper -->
		<!-- 
Clients 
-->
		<section class="our_client">
			<hr class="soften" />
			<h4 class="title cntr">
				<span class="text">Manufactures</span>
			</h4>
			<hr class="soften" />
			<div class="row"></div>
		</section>

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