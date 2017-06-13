<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Smart shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="css/bootstrap.min.css" media="screen"/>
    <link href="css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="css/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="../images/icon/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/icon/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/icon/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/icon/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/icon/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body>
	<%-- <jsp:include page="header.jsp" /> --%>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<b>
			<div class="well well-small"><a id="myCart" href="product_summary.html"><img src="images/icon/ico-cart.png" alt="cart">Giỏ hàng [ 3 ]  <span class="badge badge-warning pull-right">$155.00</span></a></div>
			<ul id="sideManu" class="nav nav-tabs nav-stacked">
				<li class="subMenu open"><a> THIẾT BỊ ĐIỆN TỬ [230]</a>
					<ul>
					<li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Cameras (100) </a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>Computers, Tablets & laptop (30)</a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>Mobile Phone (80)</a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>Sound & Vision (15)</a></li>
					</ul>
				</li>
				<li class="subMenu"><a> QUẦN ÁO [840] </a>
				<ul style="display:none">
					<li><a href="products.html"><i class="icon-chevron-right"></i>Women's Clothing (45)</a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>Women's Shoes (8)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>Women's Hand Bags (5)</a></li>	
					<li><a href="products.html"><i class="icon-chevron-right"></i>Men's Clothings  (45)</a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>Men's Shoes (6)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>Kids Clothing (5)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>Kids Shoes (3)</a></li>												
				</ul>
				</li>
				<li class="subMenu"><a>THỰC PHẨM & ĐỒ UỐNG [1000]</a>
					<ul style="display:none">
					<li><a href="products.html"><i class="icon-chevron-right"></i>Angoves  (35)</a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>Bouchard Aine & Fils (8)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>French Rabbit (5)</a></li>	
					<li><a href="products.html"><i class="icon-chevron-right"></i>Louis Bernard  (45)</a></li>
					<li><a href="products.html"><i class="icon-chevron-right"></i>BIB Wine (Bag in Box) (8)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>Other Liquors & Wine (5)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>Garden (3)</a></li>												
					<li><a href="products.html"><i class="icon-chevron-right"></i>Khao Shong (11)</a></li>												
				</ul>
				</li>
				<li><a href="products.html">SỨC KHỎE & LÀM ĐẸP [18]</a></li>
				<li><a href="products.html">THỂ THAO [58]</a></li>
				<li><a href="products.html">SÁCH & GIẢI TRÍ [14]</a></li>
			</ul>
			<br/>
			<div class="thumbnail">
				<img src="images/imgs/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
				<div class="caption">
				  <h5>Panasonic</h5>
					<h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
				</div>
			</div><br/>
			<div class="thumbnail">
				<img src="images/imgs/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
				<div class="caption">
				  <h5>Kindle</h5>
					<h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
				</div>
			  </div><br/>
			<div class="thumbnail">
				<img src="images/icon/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Phương thức thanh toán</h5>
				</div>
			</div>
		</b>
	</div>
<!-- Sidebar end=============================================== -->
</div></div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<%-- <jsp:include page="footer.jsp" /> --%>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/prettify.js"></script>
	
	<script src="../js/bootshop.js"></script>
    <script src="../js/jquery.lightbox-0.5.js"></script>
</body>
</html>