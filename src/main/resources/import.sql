
INSERT INTO public.rest_endpoint (version, content, method, uri, delay) VALUES (1,'{empty: "test"}','GET', '/rest/uri', 0);
INSERT INTO public.rest_endpoint (version, content, method, uri, delay) VALUES (1,'{empty: "sdf"}','GET', '/rest/sdf', 0);
INSERT INTO public.rest_endpoint (version, content, method, uri, delay) VALUES (1,'{empty: "fgh"}','GET', '/rest/zer', 0);
INSERT INTO public.rest_endpoint (version, content, method, uri, delay) VALUES (1,'{empty: "ghj"}','GET', '/rest/xcv', 0);
INSERT INTO public.request (id, version, method, path, status, timestamp) VALUES (151688, 0, 'POST', '/rest/events', 'OK', '2015-06-10 16:23:04.890000');
INSERT INTO public.request (id, version, method, path, status, timestamp) VALUES (151689, 0, 'POST', '/rest/events', 'OK', '2015-06-10 16:23:41.912000');
INSERT INTO public.request (id, version, method, path, status, timestamp) VALUES (151708, 0, 'POST', '/rest/events', 'OK', '2015-06-11 13:04:43.555000');
INSERT INTO public.request (id, version, method, path, status, timestamp) VALUES (151709, 0, 'POST', '/rest/events', 'OK', '2015-06-11 13:13:05.584000');

