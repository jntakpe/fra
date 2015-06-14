'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (EndpointsService, endpoints) {
        var vm = this;

        vm.endpoints = endpoints;
        vm.remove = function (endpoint) {
            endpoint.remove().then(function () {
                refresh()
            });
        };

        function refresh() {
            EndpointsService.baseEndpoints.getList().then(function (data) {
                vm.endpoints = data;
            });
        }
    });
})();
