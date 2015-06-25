'use strict';

(function () {
    angular.module('fra-endpoints').controller('EditEndpointsCtrl', function (endpoint, EndpointsService, $state) {
        var vm = this;

        var backToList = function () {
            $state.go('main.endpoints', {}, {reload: true});
        };

        vm.endpoint = endpoint;
        if (!endpoint.id) {
            vm.endpoint.method = 'GET';
        }

        vm.submit = function () {
            if (endpoint.id) {
                vm.endpoint.put().then(backToList);
            } else {
                EndpointsService.baseEndpoints.post(vm.endpoint).then(backToList);
            }
        };

    });
})();
