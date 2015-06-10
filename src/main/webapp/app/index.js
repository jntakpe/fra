'use strict';

(function () {
    angular.module('fra', [
        'fra-core',
        'fra-layout',
        'fra-home',
        'fra-api-docs'
    ]).config(function ($urlRouterProvider) {
        $urlRouterProvider.otherwise('/');
    });
})();

