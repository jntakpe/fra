fraApp.factory('EndpointsService', ['$resource', function ($resource) {
    "use strict";
    return {
        resource: $resource('/endpoints/:endpointId', {endpointId: '@id'}, {'update': {method: 'PUT'}}),
        listProps: function (endpoints) {
            var listProps = {};
            listProps.total = endpoints.length;
            listProps.numberPerPage = 8;
            listProps.numPages = Math.ceil(listProps.total / listProps.numberPerPage);
            return listProps;
        },
        refreshPage: function (currentPage, numberPerPage, endpoints) {
            var offset = (currentPage - 1) * numberPerPage;
            return endpoints.slice(offset, offset + numberPerPage);
        }

    };
}]);