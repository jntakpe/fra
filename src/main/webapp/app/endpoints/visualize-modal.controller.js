'use strict';

(function () {
    angular.module('fra-endpoints').controller('JsonViewModalCtrl', function (endpoint, $modalInstance) {
        var vm = this;

        vm.endpoint = {
            uri: endpoint.uri,
            content: JSON.parse(endpoint.content)
        };
        vm.close = function () {
            $modalInstance.close();
        };
    });
})();