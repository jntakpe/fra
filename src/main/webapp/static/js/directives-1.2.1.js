fraApp.directive('back', ['$window', function ($window) {
    "use strict";
    return {
        restrict: 'A',
        link: function ($scope, element) {
            element.on('click', function () {
                $window.history.back();
            });
        }
    };
}]);