fraApp.factory('EndpointsService', ['$resource', function ($resource) {
    "use strict";
    return {
        resource: $resource('/endpoints/:endpointId', {endpointId: '@id'}, {'update': {method: 'PUT'}}),
        getErrorMsg: function (error) {
            if (error.status === 409) {
                return 'Sauvegarde impossible. Un endpoint avec ces URI et méthode existe déjà';
            }
            return 'Erreur lors de la sauvegarde du endpoint REST';
        }
    };
}]);

fraApp.factory('PageService', [function () {
    "use strict";
    return {
        paginate: function (currentPage, numberPerPage, data) {
            var offset = (currentPage - 1) * numberPerPage;
            return data.slice(offset, offset + numberPerPage);
        },
        listProps: function (data) {
            var listProps = {};
            listProps.total = data.length;
            listProps.numberPerPage = 8;
            listProps.numPages = Math.ceil(listProps.total / listProps.numberPerPage);
            return listProps;
        }
    };
}]);

fraApp.factory('TraceService', ['$resource', function ($resource) {
    "use strict";
    return $resource('/request');
}]);