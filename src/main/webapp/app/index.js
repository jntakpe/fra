'use strict';

(function () {
    angular.module('fra', [
        'fra-core',
        'fra-layout',
        'fra-error'
    ]).config(function ($urlRouterProvider) {
        $urlRouterProvider.otherwise('/404');
    });
})();

