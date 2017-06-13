app.factory('CategoryService', ['$http', '$q', function($http, $q){
 
    return {
         
            fetchAllItems: function() {
                    return $http.get('http://localhost:8080/SmartShop/category/getall')
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