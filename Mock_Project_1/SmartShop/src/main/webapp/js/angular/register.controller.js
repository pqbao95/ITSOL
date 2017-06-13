var app = angular.module("myApp",["ngRoute"]);
app.config(function($routeProvider){
	$RouteProvider()
	.when("/register", {
		templateUrl : "register.jsp",
		controller : "myCtrl"
	})
});
app.controller("myCtrl", function($scope, $http)
{
	$scope.users = []
	$scope.userform = {
			id : "",
			username : "",
			password : "",
			email : "",
			gender : "",
			gender : "",
			phone : "",
			address : "",
			dateofbirth : ""
		};
	
	getAllUser();
	
	function getAllUser()
	{
		$http({
			method : 'GET',
			url : '/SmartShop/user'
		}).then(function successCallback(response) {
			$scope.users = response.data;
		}, function errorCallback(response) {
			console.log(response.statusText);
		});
	}
	
	$scope.login = function(username, password)
	{
		$http({
			method : 'GET',
			url : '/SmartShop/login/' + username +'/'+ password,
			data : angular.toJson(username, password),
			headers : {
				'Content-Type' : 'application/json'
			}
		}).then(_success, _error);
//		alert(username +" "+ password)
	}
	
	$scope.saveUser = function()
	{
		 $http({
             method : 'POST',
             url : '/SmartShop/user',
             data : angular.toJson($scope.userform),
             headers : {
                 'Content-Type' : 'application/json'
             }
         }).then( _success, _error );
	}
	
	function _success(response) 
	{
		getAllUser();
        _clearForm()
    }

    function _error(response)
    {
        console.log(response.statusText);
    }
	
	function _clearForm()
	{
		$scope.userid = "";
		$scope.username = "";
		$scope.password = "";
		$scope.email = "";
		$scope.gender = "";
		$scope.phone = "";
		$scope.address = "";
		$scope.dateofbirth = "";
	}
});