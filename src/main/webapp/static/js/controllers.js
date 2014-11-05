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


        if ($routeParams.create) {
            $scope.alert = {
                type: 'success',
                msg: 'Nouveau endpoint REST créé à l\'adresse : ',
                uri: $routeParams.create
            };
        }
        if ($routeParams.edit) {
            $scope.alert = {
                type: 'success',
                msg: 'Modification du endpoint REST pour l\'adresse : ',
                uri: $routeParams.edit
            };
        }

        $scope.closeAlert = function () {
            $scope.alert = null;
        };

        $scope.delete = function (endpoint, index) {
            endpoint.$delete(function () {
                $scope.endpoints.splice(index, 1);
                refresh();
                $scope.endpointsProps = EndpointsService.listProps($scope.endpoints);
            });
        };

    }]);

fraApp.controller('EndpointCreateCtrl', ['$scope', '$location', 'EndpointsService',
    function ($scope, $location, EndpointsService) {
        "use strict";

        $scope.submit = function () {
            EndpointsService.resource.save($scope.endpoint,
                function (response) {
                    $location.path('/endpoints').search('create', response.uri);
                },
                function (error) {
                    $scope.alert = {
                        type: 'danger',
                        msg: EndpointsService.getErrorMsg(error)
                    };
                }
            );
        };

        $scope.closeAlert = function () {
            $scope.alert = null;
        };

    }]);

fraApp.controller('EndpointEditCtrl', ['$scope', '$location', 'EndpointsService', 'editEndpoint',
    function ($scope, $location, EndpointsService, editEndpoint) {
        "use strict";

        $scope.endpoint = editEndpoint;

        $scope.submit = function () {

            EndpointsService.resource.update($scope.endpoint,
                function (response) {
                    $location.path('/endpoints').search('edit', response.uri);
                },
                function (error) {
                    $scope.alert = {
                        type: 'danger',
                        msg: EndpointsService.getErrorMsg(error)
                    };
                }
            );
        };

        $scope.closeAlert = function () {
            $scope.alert = null;
        };
    }]);