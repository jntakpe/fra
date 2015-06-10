'use strict';

(function () {
    angular.module('fra-api-docs', ['fra-core']).config(function ($stateProvider) {
        $stateProvider.state('main.apidocs', {
            url: '/apidocs',
            views: {
                'content@layout': {
                    templateUrl: 'app/api-docs/api-docs.html'
                }
            }
        });
    });
})();

