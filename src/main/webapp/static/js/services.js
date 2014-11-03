fraApp.factory('EndpointsService', ['$resource', function ($resource) {
    "use strict";
    return {
        resource: $resource('/endpoints/:endpointId', {endpointId: '@id'}, {}),
        listProps: function (endpoints) {
            var listProps = {};
            listProps.total = endpoints.length;
            listProps.numberPerPage = 2;
            listProps.numPages = Math.ceil(listProps.total / listProps.numberPerPage);
            return listProps;
        },
        refreshPage: function (currentPage, numberPerPage, endpoints) {
            var offset = (currentPage - 1) * numberPerPage;
            return endpoints.slice(offset, offset + numberPerPage);
        }

    };
}]);

fraApp.factory('WaitInit', ['$timeout', function ($timeout) {
    "use strict";
    return $timeout(function () {
    }, 3000);
}]);
