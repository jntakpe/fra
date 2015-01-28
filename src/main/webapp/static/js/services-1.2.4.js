fraApp.factory('EndpointsService', ['$resource', function ($resource) {
    "use strict";

    function isLiteral(obj) {
        return Object.prototype.toString.call(obj) === '[object Object]';
    }

    return {
        resource: $resource('/endpoints/:endpointId', {endpointId: '@id'}, {'update': {method: 'PUT'}}),
        getErrorMsg: function (error) {
            if (error.status === 409) {
                return 'Sauvegarde impossible. Un endpoint correspondant à ces paramètres existe déjà';
            }
            return 'Erreur lors de la sauvegarde du endpoint REST';
        },
        addFullUri: function (endpoints) {
            var endpoint, uri, param, params;
            for (endpoint in endpoints) {
                if (endpoints.hasOwnProperty(endpoint) && isLiteral(endpoints[endpoint])) {
                    uri = endpoints[endpoint].uri;
                    params = endpoints[endpoint].params;
                    if (params && params.length) {
                        uri = uri + '?';
                        for (param in params) {
                            if (params.hasOwnProperty(param)) {
                                uri = uri + params[param].name + '=' + params[param].value;
                                if (params.length - 1 !== parseInt(param, 10)) {
                                    uri = uri + '&';
                                }
                            }
                        }
                    }
                    endpoints[endpoint].fullUri = uri;
                }
            }
            return endpoints;
        }
    };
}]);

fraApp.factory('PageService', [function () {
    "use strict";
    return {
        paginate: function (currentPage, numberPerPage, data) {
            var offset, page;
            page = data.length / numberPerPage;
            if (currentPage > page) {
                page = page < 1 ? 1 : Math.ceil(page);
                currentPage = page;
            }
            offset = (currentPage - 1) * numberPerPage;
            return {
                data: data.slice(offset, offset + numberPerPage),
                page: currentPage,
                total: data.length
            };
        },
        listProps: function (data) {
            var listProps = {};
            listProps.total = data.length;
            listProps.numberPerPage = 8;
            listProps.numPages = Math.ceil(listProps.total / listProps.numberPerPage);
            return listProps;
        }

        ,
        refreshSort: function (column, sort) {
            if (sort.column === column) {
                if (sort.reverse) {
                    sort.column = null;
                    sort.reverse = false;
                } else {
                    sort.reverse = true;
                }
            } else {
                sort.column = column;
                sort.reverse = false;
            }
        }
        ,
        refreshSortClass: function (column, sort) {
            if (sort.column === column) {
                return sort.reverse ? 'fa-sort-desc' : 'fa-sort-asc';
            }
            return 'fa-sort';
        }
    };
}])
;

fraApp.factory('TraceService', ['$resource', function ($resource) {
    "use strict";
    return $resource('/request');
}]);