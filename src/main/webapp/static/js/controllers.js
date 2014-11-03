fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', '$routeParams', 'EndpointsService',
    function ($scope, $routeParams, EndpointsService) {
        "use strict";
        EndpointsService.query(function (response) {
            $scope.endpoints = response;
            $scope.totalEndpoints = $scope.endpoints.length;
        });

        $scope.currentPage = 1;
        $scope.numPerPage = 2;
        $scope.numPages = Math.ceil($scope.totalEndpoints / $scope.numPerPage);

        $scope.$watch('currentPage', function () {
            var offset = ($scope.currentPage - 1) * $scope.numPerPage;
            $scope.currentEndpoints = $scope.endpoints.slice(offset, offset + $scope.numPerPage);
        });

        if ($routeParams.uri) {
            $scope.alert = {
                type: 'success',
                msg: 'Nouveau endpoint REST créé à l\'adresse : ' + $routeParams.uri
            };
        }

        $scope.closeAlert = function () {
            $scope.alert = null;
        };

        $scope.delete = function (endpoint, index) {
            endpoint.$delete(function () {
                $scope.endpoints.splice(index, 1);
            });
        };


    }]);

fraApp.controller('EndpointCtrl', ['$scope', '$location', 'EndpointsService',
    function ($scope, $location, EndpointsService) {
        "use strict";

        $scope.submit = function () {
            EndpointsService.save($scope.endpoint,
                function (response) {
                    $location.path('/endpoints').search('uri', response.uri);
                },
                function () {
                    $scope.alert = {
                        type: 'danger',
                        msg: 'Erreur lors de la sauvegarde du endpoint REST'
                    };
                });
        };

        $scope.closeAlert = function () {
            $scope.alert = null;
        };
    }]);