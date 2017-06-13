var app = angular.module("mySmartShop", ["ngRoute"]);
app.config(function($routeProvider){
	$routeProvider
	.when("/", {
		templateUrl : "views/home.jsp",
		controller : 'CategoryController as categoryCtrl',
		resolve: {
            async: ['CategoryService', function(CategoryService) {
                return CategoryService.fetchAllItems();
            }]
        }
			
	})
	.when("/register", {
		templateUrl : "views/register.jsp",
		controller : 'CategoryController as categoryCtrl',
		resolve: {
            async: ['CategoryService', function(CategoryService) {
                return CategoryService.fetchAllItems();
            }]
        }
	})
	.when("/products/:id", {
		templateUrl : "views/products.jsp",
		controller : 'ProductController as productCtrl',
		resolve: {
            async: ['ProductService','$route', function(ProductService,$route) {
                return ProductService.fetchAllItems($route.current.params.id);
            }]
        }
	})
	.when("/product_detail/:id", {
		templateUrl : "views/product_details.jsp",
		controller : 'ProductDetailController as productDetailCtrl',
		resolve: {
            async: ['ProductService','$route', function(ProductService,$route) {
                return ProductService.fetchProductItems($route.current.params.id);
            }]
        }
	})
	.when("/introduce", {
		templateUrl : "views/introduce.jsp"
	})
	.when("/special_offer", {
		templateUrl : "views/special_offer.jsp"
	})
	.when("/news", {
		templateUrl : "views/news.jsp"
	})
	.when("/user_detail", {
		templateUrl : "views/user_detail.jsp"
	})
	.when("/product_summary", {
		templateUrl : "views/product_summary.jsp"
	})
	.when("/product_summary/:id", {
		templateUrl : "views/product_summary.jsp",
		controller : 'CartController as cartCtrl',
		resolve: {
            async: ['CartService','$route', function(CartService,$route) {
                return CartService.orderItemNow($route.current.params.id);
            }]
        }
	});
});