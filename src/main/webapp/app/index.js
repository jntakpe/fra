'use strict';

(function () {
    angular.module('fra', [
        'fra-core',
        'fra-layout',
        'fra-error',
        'fra-home',
        'fra-api-docs',
        'fra-endpoints',
        'fra-requests'
    ]).config(function ($urlRouterProvider, RestangularProvider) {
        $urlRouterProvider.otherwise('/404');
        RestangularProvider.setBaseUrl('/api');
    });
})();

