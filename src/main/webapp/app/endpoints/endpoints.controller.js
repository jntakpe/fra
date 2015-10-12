'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (endpoints, EndpointsService) {
        var vm = this;

        vm.endpoints = endpoints;
        vm.remove = function (endpoint) {
            endpoint.remove().then(refresh);
        };

        function refresh() {
            EndpointsService.list().then(function (data) {
                vm.endpoints = data;
            });
        }
    });
})();
