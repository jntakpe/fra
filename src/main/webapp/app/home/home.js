'use strict';

(function () {
    angular.module('fra-home', ['fra-core']).config(function ($stateProvider) {
        $stateProvider.state('main.home', {
            url: '/',
            views: {
                'content@layout': {
                    templateUrl: 'app/home/home.html',
                    controller: 'HomeCtrl as home'
                }
            }
        });
        $stateProvider.state('error', {
            url: '/404',
            templateUrl: 'app/error/404.html'
        });
    });
})();

