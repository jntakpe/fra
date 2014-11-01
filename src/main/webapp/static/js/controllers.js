fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', function ($scope) {
    "use strict";
}]);

fraApp.controller('EndpointCtrl', ['$scope', 'Endpoints', function ($scope, Endpoints) {
    "use strict";
    $scope.submit = function () {
        Endpoints.save($scope.endpoint, function () {
            console.log('saved');
        });
    };
}]);