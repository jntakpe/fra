'use strict';

(function () {
    angular.module('fra-requests').factory('RequestsService', function ($http) {
        return {
            get: $http.get('api/request')
        };
    });
})();

