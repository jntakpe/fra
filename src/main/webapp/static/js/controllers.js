fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', '$routeParams', 'EndpointsService', 'resolvedEndpoints',
    function ($scope, $routeParams, EndpointsService, resolvedEndpoints) {
        "use strict";

        function refresh() {
            $scope.currentEndpoints = EndpointsService.refreshPage($scope.currentPage, $scope.endpointsProps.numberPerPage, $scope.endpoints);
        }

        $scope.sort = {
            column: null,
            reverse: false
        };

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
                $scope.alert = {
                    type: 'success',
                    msg: 'Suppression du endpoint : ' + endpoint.uri + ' effectuée avec succès'
                };
            });
        };

        $scope.sortColumn = function (column) {
            if ($scope.sort.column === column) {
                if ($scope.sort.reverse) {
                    $scope.sort.column = null;
                    $scope.sort.reverse = false;
                } else {
                    $scope.sort.reverse = true;
                }
            } else {
                $scope.sort.column = column;
                $scope.sort.reverse = false;
            }
        };

        $scope.sortClass = function (column) {
            if ($scope.sort.column === column) {
                return $scope.sort.reverse ? 'fa-sort-desc' : 'fa-sort-asc';
            }
            return 'fa-sort';
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

fraApp.controller('TraceCtrl', ['$scope',
    function ($scope) {
        "use strict";

    }]);