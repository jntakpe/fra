(function () {
    'use strict';

    angular.module('fra-layout').directive('spinner', spinner);

    function spinner() {
        return {
            templateUrl: 'app/components/directives/spinner/spinner.tpl.html',
            restrict: 'A',
            transclude: true,
            scope: {
                spinner: '='
            },
            controller: SpinnerCtrl,
            controllerAs: 'spinner',
            bindToController: true
        };

        function SpinnerCtrl() {
            var vm = this;
            vm.spinner.then(function () {
                vm.done = true;
            });
        }

    }
})();