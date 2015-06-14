'use strict';

(function () {
    angular.module('fra-endpoints').controller('ConfirmDeleteModalCtrl', function (endpoint, $modalInstance) {
        var vm = this;

        vm.endpoint = endpoint;
        vm.delete = function () {
            $modalInstance.close(endpoint);
        };
        vm.close = function () {
            $modalInstance.dismiss('cancel');
        }
    });
})();