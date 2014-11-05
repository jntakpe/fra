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
        },
        getErrorMsg: function (error) {
            if (error.status === 409) {
                return 'Sauvegarde impossible. Un endpoint avec ces URI et méthode existe déjà';
            }
            return 'Erreur lors de la sauvegarde du endpoint REST';
        }
    };
}]);