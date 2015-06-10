package com.github.jntakpe.fra.repository;

import com.github.jntakpe.fra.domain.RestEndpoint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.http.HttpMethod;

import java.util.List;

/**
 * Publication des méthodes de gestion de l'entité {@link com.github.jntakpe.fra.domain.RestEndpoint}
 *
 * @author jntakpe
 */
public interface RestEndpointRepository extends JpaRepository<RestEndpoint, Long> {

    List<RestEndpoint> findByUriAndMethod(String uri, HttpMethod method);

}
