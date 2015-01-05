package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.service.RestEndpointService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Resource répondant à toutes les requêtes REST fake
 *
 * @author jntakpe
 */
@RestController
public class FakeResource {

    private RestEndpointService endpointService;

    @Autowired
    public FakeResource(RestEndpointService endpointService) {
        this.endpointService = endpointService;
    }

    @RequestMapping("/rest/**")
    public ResponseEntity<String> fake(HttpServletRequest request, @RequestParam Map<String, String> params,
                                       @RequestBody(required = false) String body) {
        return endpointService.delayFindMatchingEndpoint(request.getRequestURI(), request.getMethod(), params);
    }

}
