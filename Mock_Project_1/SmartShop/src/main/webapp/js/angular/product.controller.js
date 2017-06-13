app.controller('ProductController', ['async', function(async) {
          var self = this;
          self.items=async;
}]);
app.controller('prodCtrl',['$scope','$http','$location',function($scope,$http,$location){
	$scope.deletePro=function(id){
		$http({
			method: 'GET',
			url: 'http://localhost:8080/SmartShop/shoppingcart/deleteorder?id='+id
		}).then(function($location){
			location.reload();
		});
	};
}]);