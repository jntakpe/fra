var fraApp = angular.module('fraApp', ['ngMessages', 'ngRoute', 'ngResource', 'ui.bootstrap']);

fraApp.config(function ($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
    });
});