app.factory('ProductService', ['$http', '$q', function($http, $q){
 
    return {
         
            fetchAllItems: function(categoryid) {
                    return $http.get('http://localhost:8080/SmartShop/product/list?id='+categoryid)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while fetching Items');
                                        return $q.reject(errResponse);
                                    }
                            );
            },
            fetchProductItems: function(id) {
                return $http.get('http://localhost:8080/SmartShop/product/getbyid?id='+id)
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