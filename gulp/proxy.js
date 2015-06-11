'use strict';

var proxy = require('proxy-middleware');
var url = require('url');

var baseUri = 'http://localhost:8080';

var proxyRoutes = [
    '/endpoints',
    '/api',
    '/request',
    '/rest',
    '/api-docs',
    '/metrics'
];

var requireTrailingSlash = proxyRoutes.filter(function (r) {
    return r.indexOf('/', r.length - '/'.length) !== -1;
}).map(function (r) {
    return r.substr(0, r.length - 1);
});

var proxies = [
    function (req, res, next) {
        requireTrailingSlash.forEach(function (route) {
            if (url.parse(req.url).path === route) {
                res.statusCode = 301;
                res.setHeader('Location', route + '/');
                res.end();
            }
        });
        next();
    }
].concat(
    proxyRoutes.map(function (r) {
        var options = url.parse(baseUri + r);
        options.route = r;
        return proxy(options);
    }));

module.exports = function () {
    return proxies;
};
