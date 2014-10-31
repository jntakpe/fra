var fraApp = angular.module('fraApp', ['ngMessages', 'ngRoute', 'ngResource', 'ui.bootstrap']);

fraApp.config(function ($routeProvider) {
    "use strict";
    $routeProvider.when('/endpoints', {
        templateUrl: 'views/endpoints.html',
        controller: 'EndpointsCtrl'
    }).otherwise({
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
    });
});