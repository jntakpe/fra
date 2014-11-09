INSERT INTO rest_endpoint (version, uri, method, content) VALUES (0, '/rest/hello', 'GET', 'say hello');
INSERT INTO rest_endpoint (version, uri, method, content) VALUES (0, '/rest/hello/joss', 'GET', 'hello jOSS');
INSERT INTO rest_endpoint (version, uri, method, content) VALUES (0, '/rest/hello/add/toto', 'POST', 'add toto');

INSERT INTO request (version, method, path, status, timestamp)
VALUES (0, 'GET', '/rest/sdfsdf/hahahhhahahah', 'OK', current_timestamp);
INSERT INTO request (version, method, path, status, timestamp)
VALUES (0, 'GET', '/rest/test/tutu/fuckyeahbaby', 'NOT_FOUND', current_timestamp);
INSERT INTO request (version, method, path, status, timestamp)
VALUES (0, 'GET', '/rest/dfgdfg/sdfsdf', 'OK', '2014-01-07 18:00:00.000000');
INSERT INTO request (version, method, path, status, timestamp)
VALUES (0, 'GET', '/rest/new/endpoint', 'NOT_FOUND', '2013-10-07 00:00:00.000000');
INSERT INTO request (version, method, path, status, timestamp)
VALUES (0, 'GET', '/rest/new/sdf', 'OK', '2012-10-07 00:00:00.000000');

