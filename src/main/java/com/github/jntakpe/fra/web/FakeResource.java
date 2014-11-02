package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.service.RestEndpointService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Resource répondant à toutes les requêtes REST fake
 *
 * @author jntakpe
 */
@RestController
public class FakeResource {

    @Autowired
    private RestEndpointService restEndpointService;

    @RequestMapping("/rest/**")
    public ResponseEntity<String> fake(HttpServletRequest request) {
        RestEndpoint endpoint = restEndpointService.findByUriAndMethod(request.getRequestURI(), request.getMethod());
        if (endpoint == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(endpoint.getContent(), HttpStatus.OK);
    }

}
