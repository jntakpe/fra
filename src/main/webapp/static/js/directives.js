fraApp.directive('endpointAvailableValidator', ['$http', function ($http) {
    "use strict";
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function ($scope, element, attrs, ngModel) {
            ngModel.$asyncValidators.endpointAvailable = function (value) {
                var uri, method;
                if (element[0].name === 'uri') {
                    uri = value;
                    method = $scope.endpoint.method;
                } else {
                    uri = $scope.endpoint.uri;
                    method = value;
                }
                return $http.get('/endpoints/available', {
                    params: {
                        id: $scope.endpoint.id,
                        uri: uri,
                        method: method
                    }
                });
            };
        }
    };
}]);

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