'use strict';

(function () {
    angular.module('fra-endpoints', ['fra-core']).config(function ($stateProvider) {
        $stateProvider.state('main.endpoints', {
            url: '/endpoints',
            data: {
                breadcrumb: ['main.home'],
                title: 'Liste des endpoints'
            },
            views: {
                'content@layout': {
                    templateUrl: 'app/endpoints/endpoints.html',
                    controller: 'EndpointsCtrl as endpoints'
                }
            },
            resolve: {
                endpoints: function (EndpointsService) {
                    return EndpointsService.baseEndpoints.getList();
                }
            }
        });
    });
})();
