package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.repository.RestEndpointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Ressource gérant les différents {@link com.github.jntakpe.fra.domain.RestEndpoint}
 *
 * @author jntakpe
 */
@RestController
@RequestMapping("/endpoints")
public class RestEndpointResource {

    @Autowired
    private RestEndpointRepository restEndpointRepository;

    @RequestMapping(method = RequestMethod.GET)
    public List<RestEndpoint> list() {
        return null;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public RestEndpoint get(@PathVariable Long id) {
        return null;
    }

    @RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public RestEndpoint create(@RequestBody RestEndpoint restEndpoint) {
        System.out.println(restEndpoint);
        return restEndpointRepository.save(restEndpoint);
    }
}
