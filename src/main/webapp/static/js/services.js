fraApp.factory('EndpointsService', ['$resource', function ($resource) {
    "use strict";
    return $resource('/endpoints/:endpointId', {endpointId: '@id'}, {});
}]);