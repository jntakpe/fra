package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.service.RestEndpointService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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

    private RestEndpointService restEndpointService;

    @Autowired
    public RestEndpointResource(RestEndpointService restEndpointService) {
        this.restEndpointService = restEndpointService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public List<RestEndpoint> list() {
        return restEndpointService.findAll();
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public RestEndpoint get(@PathVariable Long id) {
        return null;
    }

    @RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public RestEndpoint create(@RequestBody RestEndpoint restEndpoint) {
        return restEndpointService.save(restEndpoint);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<String> delete(@PathVariable Long id) {
        restEndpointService.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @RequestMapping(value = "/available", method = RequestMethod.GET)
    public ResponseEntity<String> available(Long id, String uri, String method) {
        if (StringUtils.isBlank(uri) || StringUtils.isBlank(method)) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        boolean available = restEndpointService.isAvailable(id, uri, HttpMethod.valueOf(method));
        return new ResponseEntity<>(available ? HttpStatus.NO_CONTENT : HttpStatus.CONFLICT);
    }
}
