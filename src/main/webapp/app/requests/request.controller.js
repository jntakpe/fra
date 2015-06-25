'use strict';

(function () {
    angular.module('fra-requests').controller('RequestsCtrl', function (RequestsService, requests) {
        var vm = this;

        vm.requests = requests.data;

        vm.clear = function () {
            RequestsService.clear().success(function () {
                RequestsService.findAll().success(function (data) {
                    vm.requests = data;
                });
            });
        };
    });
})();
