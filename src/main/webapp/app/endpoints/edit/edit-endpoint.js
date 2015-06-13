'use strict';

(function () {
    angular.module('fra-endpoints').config(function ($stateProvider) {
        $stateProvider.state('main.endpoints.edit', {
            url: '/:id',
            views: {
                'content@layout': {
                    templateUrl: 'app/endpoints/edit/edit-endpoint.html',
                    controller: 'EditEndpointsCtrl as editEndpoints'
                }
            }
        });
    });
})();
