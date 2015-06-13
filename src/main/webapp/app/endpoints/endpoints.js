'use strict';

(function () {
    angular.module('fra-endpoints', ['fra-core']).config(function ($stateProvider) {
        $stateProvider.state('main.endpoints', {
            url: '/endpoints',
            views: {
                'content@layout': {
                    templateUrl: 'app/endpoints/endpoints.html',
                    controller: 'EndpointsCtrl as endpoints'
                }
            }
        });
    });
})();
