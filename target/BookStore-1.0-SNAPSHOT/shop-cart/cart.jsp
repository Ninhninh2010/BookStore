<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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
		
			<div class="span12">
				<ul class="breadcrumb">
					<li><a href="index.html">Home</a> <span class="divider">/</span></li>
					<li class="active">Check Out</li>
				</ul>
				<div class="well well-small">
					<h1>
						Check Out 
					</h1>
					<hr class="soften" />

					<table class="table table-bordered table-condensed">
						<thead>
							<tr>
								<th>Product</th>
								<th>Description</th>
								<th>Ref.</th>
								<th>Avail.</th>
								<th>Unit price</th>
								<th>Qty</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cart.getItems()}" var="o">
								<tr>
									<td><img width="100" src="${o.getProduct().getAnh()}"
										alt=""></td>
									<td>${o.getNameSP()}</td>
									<td>-</td>
									<td><span class="shopBtn"><span class="icon-ok"></span></span>
									</td>
									<td><span data-type="money">${o.getPrice()}</span></td>
									<td><input class="span1" style="max-width: 34px"
										placeholder="1" id="appendedInputButtons" size="16"
										type="text" value="${o.getQuantity()}">
										<div class="input-append">

											<form action="AdDelRe" method="post"
												style="margin: 0; display: inline-block;">
												<button class="btn btn-mini" type="submit">-</button>
												<input type="hidden" name="id"
													value="${o.getProduct().getMaSP()}" /> <input
													type="hidden" name="num" value="-1" />
											</form>

											<form action="AdDelRe" method="post"
												style="margin: 0; display: inline-block;">
												<button class="btn btn-mini" type="submit">+</button>
												<input type="hidden" name="id"
													value="${o.getProduct().getMaSP()}" /> <input
													type="hidden" name="num" value="1" />
											</form>

											<form action="AdDelRe" method="post"
												style="margin: 0; display: inline-block;">
												<button class="btn btn-mini btn-danger" type="submit">
													<span class="icon-remove"></span>
												</button>
												<input type="hidden" name="id"
													value="${o.getProduct().getMaSP()}" /> <input
													type="hidden" name="num" value="0" />
											</form>


										</div></td>
									<td><span data-type="money">${o.getPrice()*o.getQuantity()}</span></td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="6" class="alignR">Total products:</td>
								<td>${cart.getTotalMoney()}VND</td>
							</tr>

						</tbody>
					</table>
					<br />


					
					<form id="form-order" class="form-horizontal">
						<table class="table table-bordered">
							<tbody>

								<tr>
									<td>Form điền thông tin đặt hàng</td>
								</tr>
								<tr>
									<td>
										<div class="control-group">
											<label class="span2 control-label"
												style="margin-right: 10px;" for="inputPassword">Họ
												Tên</label>
											<div class="controls">
												<input id="name" type="text" placeholder="Họ tên"
													name="name" value="${user.tenKH}"> <small
													id="name_empty"></small>
											</div>
										</div>

										<div class="control-group">
											<label class="span2 control-label" for="inputPassword"
												style="margin-right: 10px;">Số điện thoại</label>
											<div class="controls">
												<input id="phone" type="text" placeholder="Số điện thoại"
													name="phone" value="${user.phone}"> <small
													id="phone_empty"></small>
											</div>
										</div>

										<div class="control-group">
											<label class="span2 control-label" for="inputPassword"
												style="margin-right: 10px;">Email</label>
											<div class="controls">
												<input id="email" type="text" placeholder="Email"
													name="email" value="${user.email}"> <small
													id="email_empty"></small>
											</div>

										</div>


										<div class="control-group">
											<label class="span2 control-label" for="inputPassword"
												style="margin-right: 10px;">Địa chỉ</label>
											<div class="controls">
												<input id="address" type="text" placeholder="Địa chỉ"
													name="address" value="${user.diaChi}"> <small
													id="address_empty"></small>
											</div>

										</div>

									</td>
								</tr>
							</tbody>
						</table>
						<a href="http://localhost:8080/BookStore"
							class="shopBtn btn-large"><span class="icon-arrow-left"></span>
							Continue Shopping </a>
						<button class="shopBtn btn-large" onclick="formvalidate()">
							Thanh Toán<span class="icon-arrow-right"></span>
						</button>
					</form>
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
		<footer class="footer">
			<div class="row-fluid">
				<div class="span2">
					<h5>Your Account</h5>
					<a href="#">YOUR ACCOUNT</a><br> <a href="#">PERSONAL
						INFORMATION</a><br> <a href="#">ADDRESSES</a><br> <a
						href="#">DISCOUNT</a><br> <a href="#">ORDER HISTORY</a><br>
				</div>
				<div class="span2">
					<h5>Iinformation</h5>
					<a href="contact.html">CONTACT</a><br> <a href="#">SITEMAP</a><br>
					<a href="#">LEGAL NOTICE</a><br> <a href="#">TERMS AND
						CONDITIONS</a><br> <a href="#">ABOUT US</a><br>
				</div>
				<div class="span2">
					<h5>Our Offer</h5>
					<a href="#">NEW PRODUCTS</a> <br> <a href="#">TOP SELLERS</a><br>
					<a href="#">SPECIALS</a><br> <a href="#">MANUFACTURERS</a><br>
					<a href="#">SUPPLIERS</a> <br />
				</div>
				<div class="span6">
					<h5>The standard chunk of Lorem</h5>
					The standard chunk of Lorem Ipsum used since the 1500s is
					reproduced below for those interested. Sections 1.10.32 and 1.10.33
					from "de Finibus Bonorum et Malorum" by Cicero are also reproduced
					in their exact original form, accompanied by English versions from
					the 1914 translation by H. Rackham.
				</div>
			</div>
		</footer>
	</div>
	<!-- /container -->

	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img src="shop-cart/assets/img/maestro.png"
					alt="payment"></a> <a href="#"><img
					src="shop-cart/assets/img/mc.png" alt="payment"></a> <a href="#"><img
					src="shop-cart/assets/img/pp.png" alt="payment"></a> <a href="#"><img
					src="shop-cart/assets/img/visa.png" alt="payment"></a> <a
					href="#"><img src="shop-cart/assets/img/disc.png" alt="payment"></a>
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

<script>
	function formvalidate() {
		var resutl = true;
		var name = document.getElementById("name").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;
		var address = document.getElementById("address").value;

		if (name.length == 0) {
			resutl = false;
		}

		if (phone.length == 0) {
			resutl = false;
		}
		if (email.length == 0) {

			resutl = false;
		}

		if (address.length == 0) {

			resutl = false;
		}

		if (resutl == true) {
			callServlet();
		} else {
			alert("Vui lòng điền đầy đủ thông tin");
		}
	}
	function callServlet() {
		document.getElementById("form-order").action = "Pay";
		document.getElementById("form-order").method = "post";
		document.getElementById("form-order").submit();
	}
</script>

</html>