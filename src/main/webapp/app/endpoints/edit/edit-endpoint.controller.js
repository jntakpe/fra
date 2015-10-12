'use strict';

(function () {
    angular.module('fra-endpoints').controller('EditEndpointsCtrl', function (endpoint, EndpointsService, $state) {
        var vm = this;

        vm.endpoint = endpoint;
        vm.submit = submit;

        function submit() {
            if (endpoint.id) {
                vm.endpoint.put().then(backToList);
            } else {
                EndpointsService.create(vm.endpoint).then(backToList);
            }
        }

        function backToList() {
            $state.go('main.endpoints', {}, {reload: true});
        }
    });
})();
