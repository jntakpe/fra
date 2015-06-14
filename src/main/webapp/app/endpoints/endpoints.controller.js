'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (EndpointsService, endpoints) {
        var vm = this;

        vm.endpoints = endpoints;

    });
})();
