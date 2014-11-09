fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', '$routeParams', '$filter', 'EndpointsService', 'PageService',
    'resolvedEndpoints',
    function ($scope, $routeParams, $filter, EndpointsService, PageService, resolvedEndpoints) {
        "use strict";

        function refresh() {
            var orderedEndpoints = $filter('orderBy')($scope.endpoints, $scope.sort.column, $scope.sort.reverse);
            $scope.currentEndpoints = PageService.paginate($scope.currentPage, $scope.endpointsProps.numberPerPage,
                orderedEndpoints);
        }

        $scope.sort = {
            column: null,
            reverse: false
        };

        $scope.endpoints = resolvedEndpoints;
        $scope.endpointsProps = PageService.listProps($scope.endpoints);
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
            PageService.refreshSort(column, $scope.sort);
            refresh();
        };

        $scope.sortClass = function (column) {
            return PageService.refreshSortClass(column, $scope.sort);
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
                });
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
                });
        };

        $scope.closeAlert = function () {
            $scope.alert = null;
        };
    }]);

fraApp.controller('TraceCtrl', ['$scope', '$filter', 'PageService', 'resolvedRequests',
    function ($scope, $filter, PageService, resolvedRequests) {
        "use strict";

        function refresh() {
            var orderedRequests = $filter('orderBy')($scope.requests, $scope.sort.column, $scope.sort.reverse);
            $scope.currentRequests = PageService.paginate($scope.currentPage, $scope.requestsProps.numberPerPage,
                orderedRequests);
        }

        $scope.sort = {
            column: null,
            reverse: false
        };
        $scope.requests = resolvedRequests;
        $scope.requestsProps = PageService.listProps($scope.requests);
        $scope.currentPage = 1;

        $scope.$watch('currentPage', function () {
            refresh();
        });

        $scope.sortColumn = function (column) {
            PageService.refreshSort(column, $scope.sort);
            refresh();
        };

        $scope.sortClass = function (column) {
            return PageService.refreshSortClass(column, $scope.sort);
        };
    }]);