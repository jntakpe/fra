package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.RestEndpoint;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Ressource gérant les différents {@link com.github.jntakpe.fra.domain.RestEndpoint}
 *
 * @author jntakpe
 */
@RestController
@RequestMapping("/endpoints")
public class RestEndpointResource {

    @RequestMapping(method = RequestMethod.GET)
    public List<RestEndpoint> list() {
        return null;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public RestEndpoint get(@PathVariable Long id) {
        return null;
    }

    @RequestMapping(method = RequestMethod.POST)
    public RestEndpoint create(RestEndpoint restEndpoint) {
        return null;
    }
}
