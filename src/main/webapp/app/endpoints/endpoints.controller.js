'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (EndpointsService, endpoints, $modal) {
        var vm = this;

        vm.endpoints = endpoints;
        vm.remove = function (endpoint) {
            endpoint.remove().then(refresh);
        };
        vm.visualize = function (endpoint) {
            $modal.open({
                templateUrl: 'app/endpoints/json-view-modal.html',
                controller: 'JsonViewModalCtrl as jsonView',
                size: 'lg',
                resolve: {
                    endpoint: function () {
                        return endpoint;
                    }
                }
            });
        };

        function refresh() {
            EndpointsService.list().then(function (data) {
                vm.endpoints = data;
            });
        }
    });
})();
