'use strict';

(function () {
    angular.module('fra-endpoints').config(function ($stateProvider) {
        $stateProvider.state('main.endpoints.edit', {
            url: '/:id',
            data: {
                breadcrumb: ['main.home', 'main.endpoints'],
                title: 'Édition d\'un endpoint'
            },
            views: {
                'content@layout': {
                    templateUrl: 'app/endpoints/edit/edit-endpoint.html',
                    controller: 'EditEndpointsCtrl as editEndpoints'
                }
            }
        });
    });
})();
