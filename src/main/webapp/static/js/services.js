fraApp.factory('Endpoints', ['$resource', function ($resource) {
    "use strict";
    return $resource('/endpoints', {}, {});
}]);