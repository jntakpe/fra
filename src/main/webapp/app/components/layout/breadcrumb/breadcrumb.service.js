'use strict';

(function () {
    angular.module('fra-layout').factory('BreadcrumbService', function ($state) {

        function resolveStateTitle(stateNames) {
            var breadcrumb = [];
            stateNames.forEach(function (name) {
                breadcrumb.push({
                    title: $state.get(name).data.title,
                    name: name
                });
            });
            return breadcrumb;
        }

        function infos() {
            return {
                title: $state.$current.data.title,
                parents: resolveStateTitle($state.$current.data.breadcrumb)
            };
        }

        return {
            infos: infos
        };
    });
})();