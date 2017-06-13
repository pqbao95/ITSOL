app.factory('CartService', ['$http', '$q', function($http, $q){
 
    return {
         
            orderItemNow: function(id) {
                    return $http.get('http://localhost:8080/SmartShop/shoppingcart/ordernow?id='+id)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while fetching Items');
                                        return $q.reject(errResponse);
                                    }
                            );
            }
    };
 
}]);