function BreadCrumb(title, link, navbar) {
    "use strict";
    this.title = title;
    this.link = link;
    this.navbar = navbar;
}

var fraApp = angular.module('fraApp', ['ngMessages', 'ngRoute', 'ngResource', 'ui.bootstrap']),
    breadcrumbs = {
        home: new BreadCrumb('Accueil', '#/', 'home'),
        endpoints: new BreadCrumb('Gestion des endpoints', '#/endpoints', 'endpoints'),
        newEndpoint: new BreadCrumb('Création d\'un endpoint', '#/endpoints/new', 'endpoints'),
        editEndpoint: new BreadCrumb('Modification d\'un endpoint', '#/endpoints/edit', 'endpoints')
    };


fraApp.config(function ($routeProvider) {
    "use strict";
    $routeProvider.when('/endpoints', {
        templateUrl: 'views/endpoints.html',
        controller: 'EndpointsCtrl',
        breadcrumb: [breadcrumbs.home, breadcrumbs.endpoints],
        resolve: {
            resolvedEndpoints: ['EndpointsService', function (EndpointsService) {
                var endpoints = EndpointsService.resource.query();
                return endpoints.$promise;
            }]

        }
    }).when('/endpoints/new', {
        templateUrl: 'views/endpoint.html',
        controller: 'EndpointCreateCtrl',
        breadcrumb: [breadcrumbs.home, breadcrumbs.endpoints, breadcrumbs.newEndpoint]
    }).when('/endpoints/:endpointId', {
        templateUrl: 'views/endpoint.html',
        controller: 'EndpointEditCtrl',
        breadcrumb: [breadcrumbs.home, breadcrumbs.endpoints, breadcrumbs.editEndpoint],
        resolve: {
            editEndpoint: ['$route', 'EndpointsService', function ($route, EndpointsService) {
                var endpoint = EndpointsService.resource.get({endpointId: $route.current.params.endpointId});
                return endpoint.$promise;
            }]
        }
    }).otherwise({
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl',
        breadcrumb: [breadcrumbs.home]
    });
}).run(['$rootScope', function ($rootScope) {
    "use strict";
    $rootScope.$on('$routeChangeSuccess', function (event, current) {
        var breadcrumb = current.$$route ? current.$$route.breadcrumb : [breadcrumbs.home],
            currentBC = breadcrumb[breadcrumb.length - 1];
        $rootScope.breadcrumb = breadcrumb;
        $rootScope.title = currentBC.title;
        $rootScope.navbar = currentBC.navbar;
    });
}]);