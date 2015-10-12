'use strict';

(function () {
    angular.module('fra-endpoints').controller('EndpointsCtrl', function (endpoints) {
        var vm = this;

        vm.endpoints = endpoints;
    });
})();
