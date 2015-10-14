'use strict';

(function () {
    angular.module('fra-home').controller('HomeCtrl', function ($state) {
        var vm = this;

        vm.create = function () {
            $state.go('main.endpoints.edit');
        }
    });
})();

