<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Website bán hàng trực tuyến</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
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
	<script src="js/angular.min.js"></script>
	<script src="js/angular-route.js"></script>
	<script src="js/angular/smartshop.app.js"></script>
	<script src="js/angular/category.controller.js"></script>
	<script src="js/angular/category.service.js"></script>
	<script src="js/angular/product.controller.js"></script>
	<script src="js/angular/product_detail.controller.js"></script>
	<script src="js/angular/product.service.js"></script>
	<script src="js/angular/cart.controller.js"></script>
	<script src="js/angular/cart.service.js"></script>
	<!-- <script src="js/smartshop.controller.js"></script> -->
<body ng-app="mySmartShop">
	<jsp:include page="views/header.jsp" />
<!-- Header End====================================================================== -->

	<div ng-view></div>
<!-- Footer ================================================================== -->
	<jsp:include page="views/footer.jsp" />
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/prettify.js"></script>
	
	<script src="js/bootshop.js"></script>
    <script src="js/jquery.lightbox-0.5.js"></script>
</body>
</html>