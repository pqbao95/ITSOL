app.controller('CategoryController', [ 'async', function(async) {
	var self = this;
	self.items = async;
} ]);

app.controller('getCate', [ '$scope', '$http', function($scope, $http) {
	$http({
		method : 'GET',
		url : 'http://localhost:8080/SmartShop/category/getall'
	}).then(function(response) {
		$scope.categories = response.data;
	});
} ]);