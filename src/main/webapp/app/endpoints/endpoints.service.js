'use strict';

(function () {
    angular.module('fra-endpoints').factory('EndpointsService', function ($resource) {

        function isLiteral(obj) {
            return Object.prototype.toString.call(obj) === '[object Object]';
        }

        function mergeUri(endpoints) {
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

        return {
            mergeUri: mergeUri,
            res: $resource('api/endpoints/:idendpoint', {idendpoint: '@id'})
        };
    });

})();

