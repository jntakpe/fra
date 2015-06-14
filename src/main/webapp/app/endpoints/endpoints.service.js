'use strict';

(function () {
    angular.module('fra-endpoints').factory('EndpointsService', function (Restangular) {
        return {
            baseEndpoints: Restangular.all('endpoints'),
            singleEndpoint: function(id) {
                return Restangular.one('endpoints', id);
            }
        };
    });
})();

