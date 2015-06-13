'use strict';

(function () {
    angular.module('fra-layout').controller('BreadcrumbCtrl', function (BreadcrumbService, $rootScope) {
        var vm = this;
        vm.infos = BreadcrumbService.infos();
        $rootScope.$on('$stateChangeSuccess', function () {
            vm.infos = BreadcrumbService.infos();
        });
    });
})();
