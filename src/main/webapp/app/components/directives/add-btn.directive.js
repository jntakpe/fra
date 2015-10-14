(function () {
    'use strict';
    angular.module('fra-layout').directive('addBtn', addBtn);

    function addBtn() {
        return {
            template: '<a class="btn btn-success" ng-click="action()"><i class="fa fa-plus"></i> {{text}}</a>',
            restrict: 'E',
            scope: {
                text: '@',
                action: '&'
            }
        };

    }
})();