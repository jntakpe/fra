'use strict';

(function () {
    angular.module('fra-home').controller('HomeCtrl', function ($http) {
        $http.get('api/endpoints').success(function (data) {
            console.log(data);
        }).error(function (error) {
            console.log(error);
        })
        });
})();
