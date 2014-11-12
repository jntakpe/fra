package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.service.RestEndpointService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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
        return restEndpointService.findOne(id);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<RestEndpoint> create(@Valid @RequestBody RestEndpoint restEndpoint) {
        if (restEndpointService.isAvailable(restEndpoint)) {
            return new ResponseEntity<>(restEndpointService.save(restEndpoint), HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.CONFLICT);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<RestEndpoint> update(@PathVariable Long id, @Valid @RequestBody RestEndpoint restEndpoint) {
        if (restEndpointService.isAvailable(restEndpoint)) {
            return new ResponseEntity<>(restEndpointService.save(restEndpoint), HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.CONFLICT);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<String> delete(@PathVariable Long id) {
        restEndpointService.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
