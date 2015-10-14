'use strict';

(function () {

    angular.module('fra-endpoints').factory('EndpointsService', function (Restangular, $q, $timeout) {
        var baseEndpoints = Restangular.all('endpoints');
        return {
            list: list,
            one: one,
            create: create
        };

        function list() {
            var deferred = $q.defer();
            baseEndpoints.getList().then(function (data) {
                $timeout(function () {
                    deferred.resolve(data);
                }, 2000);
            });
            return deferred.promise;
        }

        function one(id) {
            return baseEndpoints.get(id);
        }

        function create(endpoint) {
            return baseEndpoints.post(endpoint);
        }
    });

})();

