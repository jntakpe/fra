'use strict';

(function () {
    angular.module('fra-endpoints').factory('EndpointsService', function (Restangular) {
        return {
            baseEndpoints: Restangular.all('endpoints')
        };
    });
})();

