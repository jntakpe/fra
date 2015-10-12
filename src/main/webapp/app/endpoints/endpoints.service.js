'use strict';

(function () {

    angular.module('fra-endpoints').factory('EndpointsService', function (Restangular) {
        var baseEndpoints = Restangular.all('endpoints');
        return {
            list: list
        };

        function list() {
            return baseEndpoints.getList();
        }
    });

})();

