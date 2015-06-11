'use strict';

(function () {
    angular.module('fra-error', ['fra-core']).config(function ($stateProvider) {
        $stateProvider.state('error', {
            url: '/404',
            templateUrl: 'app/error/404.html'
        });
    });
})();
