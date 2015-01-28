fraApp.controller('HomeCtrl', ['$scope', function () {
}]);

fraApp.controller('EndpointsCtrl', ['$scope', '$routeParams', '$filter', '$modal', 'EndpointsService', 'PageService',
    'resolvedEndpoints',
    function ($scope, $routeParams, $filter, $modal, EndpointsService, PageService, resolvedEndpoints) {
        "use strict";

        function refresh() {
            var filteredEndpoints, orderedEndpoints, paginate;
            filteredEndpoints = $filter('filter')($scope.endpoints, $scope.search);
            orderedEndpoints = $filter('orderBy')(filteredEndpoints, $scope.sort.column, $scope.sort.reverse);
            paginate = PageService.paginate($scope.currentPage, $scope.endpointsProps.numberPerPage, orderedEndpoints);
            $scope.currentEndpoints = paginate.data;
            $scope.currentPage = paginate.page;
            $scope.endpointsProps.total = paginate.total;
        }

        $scope.sort = {
            column: null,
            reverse: false
        };

        $scope.endpoints = EndpointsService.addFullUri(resolvedEndpoints);
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

        $scope.sortColumn = function (column) {
            PageService.refreshSort(column, $scope.sort);
            refresh();
        };

        $scope.sortClass = function (column) {
            return PageService.refreshSortClass(column, $scope.sort);
        };

        $scope.confirmDelete = function (endpoint) {
            var modalInstance = $modal.open({
                templateUrl: 'views/modal/confirm-delete.html',
                controller: 'ModalConfirmCtrl',
                resolve: {
                    endpoint: function () {
                        return endpoint;
                    }
                }
            });

            modalInstance.result.then(function (endpoint) {
                endpoint.$delete(function () {
                    $scope.endpoints.splice($scope.endpoints.indexOf(endpoint), 1);
                    $scope.endpointsProps = PageService.listProps($scope.endpoints);
                    refresh();
                    $scope.alert = {
                        type: 'success',
                        msg: 'Suppression du endpoint : ' + endpoint.fullUri + ' effectuée avec succès'
                    };
                });
            });
        };

        $scope.openVisualizeModal = function (row) {
            $modal.open({
                templateUrl: 'views/modal/json-view.html',
                controller: 'ModalJsonViewCtrl',
                size: 'lg',
                resolve: {
                    row: function () {
                        return {
                            uri: row.uri,
                            content: row.content
                        };
                    }
                }
            });

        };

        $scope.searchChange = function () {
            refresh();
        };

        $scope.resetSearch = function () {
            $scope.search = {};
            refresh();
        };
    }]);

fraApp.controller('ModalJsonViewCtrl', ['$scope', '$modalInstance', 'row', function ($scope, $modalInstance, row) {
    "use strict";

    $scope.row = {
        uri: row.uri,
        content: JSON.parse(row.content)
    };

    $scope.close = function () {
        $modalInstance.close();
    };
}]);

fraApp.controller('ModalConfirmCtrl', ['$scope', '$modalInstance', 'endpoint',
    function ($scope, $modalInstance, endpoint) {
        "use strict";

        $scope.endpoint = endpoint;

        $scope.doDelete = function () {
            $modalInstance.close(endpoint);
        };

        $scope.close = function () {
            $modalInstance.dismiss('cancel');
        };
    }]);

fraApp.controller('EndpointCreateCtrl', ['$scope', '$location', 'EndpointsService',
    function ($scope, $location, EndpointsService) {
        "use strict";

        $scope.endpoint = {};
        $scope.endpoint.params = [];

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

        $scope.addParam = function () {
            $scope.endpoint.params.push({});
        };

        $scope.removeParam = function ($index) {
            $scope.endpoint.params.splice($index, 1);
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

        $scope.addParam = function () {
            $scope.endpoint.params.push({});
        };

        $scope.removeParam = function ($index) {
            $scope.endpoint.params.splice($index, 1);
        };

        $scope.closeAlert = function () {
            $scope.alert = null;
        };
    }]);

fraApp.controller('TraceCtrl', ['$scope', '$filter', 'PageService', 'TraceService', 'resolvedRequests',
    function ($scope, $filter, PageService, TraceService, resolvedRequests) {
        "use strict";

        function refresh() {
            if ($scope.requests.length) {
                var orderedRequests = $filter('orderBy')($scope.requests, $scope.sort.column, $scope.sort.reverse);
                $scope.currentRequests = PageService.paginate($scope.currentPage, $scope.requestsProps.numberPerPage,
                    orderedRequests).data;
            }
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

        $scope.clean = function () {
            TraceService.delete();
        };

    }]);