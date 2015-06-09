'use strict';

(function () {
    angular.module('fra', [
        'fra-core',
        'fra-layout',
        'fra-home'
    ]).config(function ($urlRouterProvider) {
        $urlRouterProvider.otherwise('/');
    });
})();

