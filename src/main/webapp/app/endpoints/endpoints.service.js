'use strict';

(function () {

    angular.module('fra-endpoints').factory('EndpointsService', function (Restangular) {
        var baseEndpoints = Restangular.all('endpoints');
        return {
            list: list,
            one: one,
            create: create
        };

        function list() {
            return baseEndpoints.getList();
        }

        function one(id) {
            return baseEndpoints.get(id);
        }

        function create(endpoint) {
            return baseEndpoints.post(endpoint);
        }
    });

})();

