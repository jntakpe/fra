'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (EndpointsService) {
        var vm = this;
        vm.list = EndpointsService.res.query();
        vm.remove = function (endpoint) {
            endpoint.$delete(function () {
                vm.list = EndpointsService.res.query();
            });

        }
    });
})();
