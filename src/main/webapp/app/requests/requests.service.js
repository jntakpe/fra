'use strict';

(function () {
    angular.module('fra-requests').factory('RequestsService', function ($http) {
        return {
            findAll: function () {
                return $http.get('api/request');
            },
            clear: function () {
                return $http.delete('api/request');
            }
        };
    });
})();

