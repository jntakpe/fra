package com.github.jntakpe.fra.web;

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

    @RequestMapping("/fake")
    public ResponseEntity<String> fake(HttpServletRequest request) {
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
