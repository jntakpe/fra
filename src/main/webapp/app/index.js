'use strict';

(function () {
    angular.module('fra', [
        'fra-core',
        'fra-layout',
        'fra-error',
        'fra-home'
    ]).config(function ($urlRouterProvider) {
        $urlRouterProvider.otherwise('/404');
    });
})();

