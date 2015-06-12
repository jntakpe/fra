'use strict';

(function () {
    angular.module('fra-requests').controller('RequestsCtrl',
        function (RequestsService) {
            var vm = this;
            RequestsService.get.success(function (data) {
                vm.data = data;
            });
    });
})();
