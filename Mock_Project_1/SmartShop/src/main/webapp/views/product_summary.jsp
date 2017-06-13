<%@page import="vn.itsol.smartshop.model.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ page isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
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
    <link rel="shortcut icon" href="images/icon/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/icon/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/icon/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/icon/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/icon/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body ng-app="app" >
<%-- <jsp:include page="header.jsp" /> --%>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
<%List<Item> list=(List<Item>)session.getAttribute("cart");
                  	int tong=0;
                  	for(Item item:list){
                  		tong=tong+item.getQuantity()*item.getProduct().getPrice();
                  	}
                  %>
	<div id="sidebar" class="span3">
		<b>
			<div class="well well-small"><a id="myCart" href="#!product_summary"><img src="images/icon/ico-cart.png" alt="cart">Giỏ hàng [ <%=list.size() %> ]  <span class="badge badge-warning pull-right"><fmt:formatNumber><%=tong %></fmt:formatNumber> VNĐ</span></a></div>
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
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active"> Giỏ hàng</li>
    </ul>
    
	<h3> Giỏ Hàng [ <small><%=list.size() %> Sản phẩm </small>]<a href="products.html" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Tiếp tục mua hàng </a></h3>	
	<hr class="soft"/>
	<!-- <table class="table table-bordered">
		<tr><th> Bạn đã có tải khoản. Đăng nhập  </th></tr>
		 <tr> 
		 <td>
			<form class="form-horizontal">
				<div class="control-group">
				  <label class="control-label" for="inputUsername">Tên tài khoản</label>
				  <div class="controls">
					<input type="text" id="inputUsername" placeholder="Username">
				  </div>
				</div>
				<div class="control-group">
				  <label class="control-label" for="inputPassword1">Mật khẩu</label>
				  <div class="controls">
					<input type="password" id="inputPassword1" placeholder="Password">
				  </div>
				</div>
				<div class="control-group">
				  <div class="controls">
					<button type="submit" class="btn">Đăng nhập</button> OR <a href="register.html" class="btn">Đăng ký ngay!</a>
				  </div>
				</div>
				<div class="control-group">
					<div class="controls">
					  <a href="forgetpass.html" style="text-decoration:underline">Quên mật khẩu ?</a>
					</div>
				</div>
			</form>
		  </td>
		  </tr>
	</table> -->		
			
	<table class="table table-bordered" >
              <thead>
                <tr>
                  <th>Sản phẩm</th>
                  <th>Mô tả</th>
                  <th>Số lượng</th>
				  <th>Gián bán</th>
                  <th>Tổng tiền</th>
				</tr>
              </thead>
              <tbody>
				<c:forEach var="pr" items="${sessionScope.cart }">
					<tr>
	                  <td> <img width="60" src="images/imgs/4.jpg" alt=""/></td>
	                  <td>${pr.product.productname }<br/>Color : black, Material : metal</td>
					  <td>
						<div ng-controller="prodCtrl" class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text"><button class="btn" type="button"><i class="icon-minus"></i></button><button class="btn" type="button"><i class="icon-plus"></i></button><button ng-click="deletePro(${pr.product.productid })" class="btn btn-danger"><i class="icon-remove icon-white"></i></button>				</div>
					  </td>
	                  <td><fmt:formatNumber>${pr.product.price }</fmt:formatNumber> VNĐ</td>
	                  <td><fmt:formatNumber>${pr.product.price*pr.quantity }</fmt:formatNumber> VNĐ</td>
	                  <td><td>
	                </tr>
				</c:forEach>
                
				 <tr>
                  <td colspan="4" style="text-align:right"><strong>Tổng tiền thanh toán =</strong></td>
                  <td class="label label-important" style="display:block"> <strong><fmt:formatNumber> <%=tong %></fmt:formatNumber> VNĐ</strong></td>
                </tr>
				</tbody>
            </table>
            
			<table class="table table-bordered">
			 <tr><th>Nhập thông tin khách hàng</th></tr>
			 <tr> 
			 <td>
				<form class="form-horizontal">
				  <div class="control-group">
					<label class="control-label" for="inputCountry">Họ tên</label>
					<div class="controls">
					  <input type="text" id="inputCountry" placeholder="Tên khách hàng">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputPost">Email</label>
					<div class="controls">
					  <input type="text" id="inputPost" placeholder="Email">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputPost">Địa chỉ</label>
					<div class="controls">
					  <input type="text" id="inputPost" placeholder="Địa chỉ">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputPost">Số điện thoại</label>
					<div class="controls">
					  <input type="text" id="inputPost" placeholder="Phone">
					</div>
				  </div>
				  <div class="control-group">
					<div class="controls">
					  <button type="submit" class="btn">ESTIMATE </button>
					</div>
				  </div>
				</form>				  
			  </td>
			  </tr>
            </table>		
	<a href="products.html" class="btn btn-large"><i class="icon-arrow-left"></i> Tiếp tục mua hàng </a>
	<a href="login.html" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>
	
</div>
</div></div>
</div>
<!-- MainBody End ============================= -->
<%-- <jsp:include page="footer.jsp" /> --%>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/prettify.js"></script>
	
	<script src="js/bootshop.js"></script>
    <script src="js/jquery.lightbox-0.5.js"></script>
    <script type="text/javascript">
    	function show(this){
    		alert("djbcjdsbjcbdsc");
    	}
    </script>
    <!-- <script type="text/javascript">
    	var app=angular.module('appProd',[]);
    	app.controller('prodCtrl',['$scope','$http','$location',function($scope,$http,$location){
    		$scope.deletePro=function(id){
    			$http({
    				method: 'GET',
    				url: 'http://localhost:8080/SmartShop/shoppingcart/deleteorder?id='+id
    			}).then(function($location){
    				$location.path('/');
    			});
    		};
    		$scope.di=function(){
    			alert("sdvsdvsd");
    		};
    	}]);
    </script> -->
</body>
</html>