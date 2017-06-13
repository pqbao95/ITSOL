<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap style -->
<link id="callCss" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen" />
<link href="css/base.css" rel="stylesheet" media="screen" />
<!-- Bootstrap style responsive -->
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->
<link href="css/prettify.css" rel="stylesheet" />
<!-- fav and touch icons -->
<link rel="shortcut icon" href="images/icon/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/icon/apple-touch-icon-57-precomposed.png">
<style type="text/css" id="enject"></style>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/prettify.js"></script>

<script src="js/bootshop.js"></script>
<script src="js/jquery.lightbox-0.5.js"></script>
</head>
<body>
	<div id="header">
		<div class="container">
			<div id="welcomeLine" class="row">
				<div class="span6">
					Xin chào, <b><strong><a href="#!user_detail">{{userform.username}}</a></strong></b>
				</div>
				<b>
					<div class="span6">
						<div class="pull-right">
							<a href="#login" role="button" data-toggle="modal"
								style="padding-right: 0">Đăng nhập</a>&nbsp; |&nbsp;
							<div id="login" class="modal hide fade in" tabindex="-1"
								role="dialog" aria-labelledby="login" aria-hidden="false">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
									<h3>Đăng nhập</h3>
								</div>
								<div class="modal-body">
									<form class="form-horizontal loginFrm" ng-submit = "login(userform.username, userform.password)">
										<div class="control-group">
											<input type="text" ng-model = "userform.username" placeholder="Tên đăng nhập">
										</div>
										<div class="control-group">
											<input type="password" ng-model = "userform.password" placeholder="Password">
										</div>
										<div class="control-group">
											<label class="checkbox"> <input type="checkbox">
												Remember me
											</label>
										</div>
										<button type="submit" class="btn btn-success">Đăng nhập</button>
										<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
									</form>
								</div>
							</div>
							<a href="#!register"><span class="">Đăng ký</span></a>&nbsp;&nbsp;
						</div>
					</div>
				</b>
			</div>
			<!-- Navbar ================================================== -->
			<div id="logoArea" class="navbar">
				<a id="smallScreen" data-target="#topMenu" data-toggle="collapse"
					class="btn btn-navbar"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="navbar-inner">
					<b> <a class="brand" href="#/!"><img
							src="images/icon/logo.png" alt="Bootsshop" /></a>
						<form class="form-inline navbar-search" method="post"
							action="#!products">
							<input id="srchFld" class="srchTxt" type="text" /> <select
								class="srchTxt">
								<option>Tất cả</option>
								<option>Quần áo</option>
								<option>Thực phầm và đồ uống</option>
								<option>Sức khỏe và làm đẹp</option>
								<option>Thể thao</option>
								<option>Sách và giải trí</option>
							</select>
							<button type="submit" id="submitButton" class="btn btn-primary">Tìm
								kiếm</button>
						</form>
						<ul id="topMenu" class="nav pull-right">
							<li class=""><a href="#!introduce">GIỚI THIỆU</a></li>&nbsp;&nbsp;
							<li class=""><a href="#!news">TIN TỨC</a></li>&nbsp;&nbsp;
							<li class=""><a href="#!special_offer">KHUYẾN MÃI</a></li>&nbsp;&nbsp;
						</ul>
					</b>
				</div>
			</div>
		</div>
	</div>
</body>
</html>