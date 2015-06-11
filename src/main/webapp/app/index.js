'use strict';

(function () {
    angular.module('fra', [
        'fra-core',
        'fra-layout',
        'fra-home',
        'fra-error',
        'fra-endpoints',
        'fra-requests',
        'fra-api-docs'
    ]).config(function ($urlRouterProvider) {
        $urlRouterProvider.otherwise('/404');
    });
})();

