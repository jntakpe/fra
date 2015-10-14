'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (EndpointsService, $modal, $state) {
        var vm = this;

        vm.promise = EndpointsService.list().then(function (data) {
            vm.endpoints = data;
        });

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
        vm.confirmDelete = function (endpoint) {
            var modal = $modal.open({
                templateUrl: 'app/endpoints/confirm-delete-modal.html',
                controller: 'ConfirmDeleteModalCtrl as confirmDelete',
                resolve: {
                    endpoint: function () {
                        return endpoint;
                    }
                }
            });
            modal.result.then(function (endpoint) {
                endpoint.remove().then(refresh);
            });
        };
        vm.goCreate = function () {
            $state.go('main.endpoints.edit');
        };

        function refresh() {
            EndpointsService.list().then(function (data) {
                vm.endpoints = data;
            });
        }
    });
})();
