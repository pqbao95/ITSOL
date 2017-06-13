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
				<li class="subMenu" ng-repeat="x in categoryCtrl.items" ><a>{{x.categoryname|uppercase }}</a>
				</li>
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
		<li><a href="#/!">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Đăng ký</li>
    </ul>
	<h3> Đăng ký</h3>	
	<div class="well">
		<form class="form-horizontal" ng-submit = "saveUser()">
			<h4>Tạo tài khoản khách hàng mới</h4><br>
			<div class="control-group">
				<label class="control-label" for="userName">Tên đăng nhập <sup>*</sup></label>
				<div class="controls">
				  <input type="text" placeholder="Tên đăng nhập" ng-model = "username" required>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="passWord">Mật khẩu <sup>*</sup></label>
				<div class="controls">
				  <input type="password" placeholder="Mật khẩu" ng-model = "password" required>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="email">Email <sup>*</sup></label>
				<div class="controls">
				  <input type="text" placeholder="Email" ng-model = "email" required>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Ngày sinh </label>
				<div class="controls">
				  <select class="span1" ng-model = "date">
						<option value="">Ngày</option>
						<option value="1">1&nbsp;&nbsp;</option>
						<option value="2">2&nbsp;&nbsp;</option>
						<option value="3">3&nbsp;&nbsp;</option>
						<option value="4">4&nbsp;&nbsp;</option>
						<option value="5">5&nbsp;&nbsp;</option>
						<option value="6">6&nbsp;&nbsp;</option>
						<option value="7">7&nbsp;&nbsp;</option>
						<option value="8">8&nbsp;&nbsp;</option>
						<option value="9">9&nbsp;&nbsp;</option>
						<option value="10">10&nbsp;&nbsp;</option>
						<option value="11">11&nbsp;&nbsp;</option>
						<option value="12">12&nbsp;&nbsp;</option>
						<option value="13">13&nbsp;&nbsp;</option>
						<option value="14">14&nbsp;&nbsp;</option>
						<option value="15">15&nbsp;&nbsp;</option>
						<option value="16">16&nbsp;&nbsp;</option>
						<option value="17">17&nbsp;&nbsp;</option>
						<option value="18">18&nbsp;&nbsp;</option>
						<option value="19">19&nbsp;&nbsp;</option>
						<option value="20">20&nbsp;&nbsp;</option>
						<option value="21">21&nbsp;&nbsp;</option>
						<option value="22">22&nbsp;&nbsp;</option>
						<option value="23">23&nbsp;&nbsp;</option>
						<option value="24">24&nbsp;&nbsp;</option>
						<option value="25">25&nbsp;&nbsp;</option>
						<option value="26">26&nbsp;&nbsp;</option>
						<option value="27">27&nbsp;&nbsp;</option>
						<option value="28">28&nbsp;&nbsp;</option>
						<option value="29">29&nbsp;&nbsp;</option>
						<option value="30">30&nbsp;&nbsp;</option>
						<option value="31">31&nbsp;&nbsp;</option>
					</select>
					<select class="span1" ng-model = "date">
						<option value="">Tháng</option>
						<option value="1">1&nbsp;&nbsp;</option>
						<option value="2">2&nbsp;&nbsp;</option>
						<option value="3">3&nbsp;&nbsp;</option>
						<option value="4">4&nbsp;&nbsp;</option>
						<option value="5">5&nbsp;&nbsp;</option>
						<option value="6">6&nbsp;&nbsp;</option>
						<option value="7">7&nbsp;&nbsp;</option>
						<option value="8">8&nbsp;&nbsp;</option>
						<option value="9">9&nbsp;&nbsp;</option>
						<option value="10">10&nbsp;&nbsp;</option>
						<option value="11">11&nbsp;&nbsp;</option>
						<option value="12">12&nbsp;&nbsp;</option>
					</select>
					<input class="span1" type="text" ng-model = "date" placeholder="Năm">
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Giới tính</label>
				<div class="controls">
					<select class="span1" ng-model = "gender" required>
						<option value="">Chọn</option>
						<option value="Nam">Nam</option>
						<option value="Nữ">Nữ</option>
					</select>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="address">Địa chỉ <sup>*</sup></label>
				<div class="controls">
				  <input type="text" placeholder="Địa chỉ" ng-model = "address" required>
				</div>
			</div>
			 
			<div class="control-group">
				<label class="control-label" for="phone">Số điện thoại <sup>*</sup></label>
				<div class="controls">
				  <input type="text" placeholder="Số điện thoại" ng-model = "phone" required>
				</div>
			</div>
		
			<div class="control-group">
				<div class="controls">
					<input class="btn btn-large btn-success" type="submit" value="Đăng ký" />
				</div>
			</div>		
		</form>
	</div>
</div>
</div>
</div>
</div>
</body>