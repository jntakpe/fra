package com.github.jntakpe.fra.web;

import com.github.jntakpe.fra.domain.Request;
import com.github.jntakpe.fra.service.RequestService;
import org.springframework.beans.factory.annotation.Autowired;
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
public class RequestResource {

    private RequestService requestService;

    @Autowired
    public RequestResource(RequestService requestService) {
        this.requestService = requestService;
    }

    @RequestMapping(value = "/request", method = RequestMethod.GET)
    public List<Request> list() {
        return requestService.findAll();
    }

}
