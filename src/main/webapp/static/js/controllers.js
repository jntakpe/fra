fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', '$routeParams', 'Endpoints', function ($scope, $routeParams, Endpoints) {
    "use strict";
    if ($routeParams.uri) {
        $scope.alert = {
            type: 'success',
            msg: 'Nouveau endpoint REST créé à ladresse suivante : ' + $routeParams.uri
        };
    }

    $scope.closeAlert = function () {
        $scope.alert = null;
    };

    $scope.endpoints = Endpoints.get();
}]);

fraApp.controller('EndpointCtrl', ['$scope', '$location', 'Endpoints', function ($scope, $location, Endpoints) {
    "use strict";
    $scope.submit = function () {
        Endpoints.save($scope.endpoint, function (response) {
            $location.path('/endpoints').search('uri', response.uri);
        });
    };
}]);