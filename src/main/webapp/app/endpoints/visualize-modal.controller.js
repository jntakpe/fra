'use strict';

(function () {
    angular.module('fra-endpoints').controller('JsonViewModalCtrl', function (endpoint, $modalInstance) {
        var vm = this;

        vm.endpoint = endpoint;
        vm.close = function () {
            $modalInstance.close();
        }
    });
})();