fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', '$routeParams', 'EndpointsService', 'resolvedEndpoints',
    function ($scope, $routeParams, EndpointsService, resolvedEndpoints) {
        "use strict";

        function refresh() {
            $scope.currentEndpoints = EndpointsService.refreshPage($scope.currentPage, $scope.endpointsProps.numberPerPage, $scope.endpoints);
        }

        $scope.endpoints = resolvedEndpoints;
        $scope.endpointsProps = EndpointsService.listProps($scope.endpoints);
        $scope.currentPage = 1;

        $scope.$watch('currentPage', function () {
            refresh();
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
                refresh();
            });
        };


    }]);

fraApp.controller('EndpointCtrl', ['$scope', '$location', 'EndpointsService',
    function ($scope, $location, EndpointsService) {
        "use strict";

        $scope.submit = function () {
            EndpointsService.resource.save($scope.endpoint,
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