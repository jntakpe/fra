package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.Request;
import com.github.jntakpe.fra.service.RequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Ressource affichant les requêtes passées
 *
 * @author jntakpe
 */
@RestController
@RequestMapping("/api/request")
public class RequestResource {

    private RequestService requestService;

    @Autowired
    public RequestResource(RequestService requestService) {
        this.requestService = requestService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public List<Request> list() {
        return requestService.findAll();
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<String> clean() {
        requestService.clean();
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
