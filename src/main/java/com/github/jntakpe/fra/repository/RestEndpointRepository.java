package com.github.jntakpe.fra.repository;

import com.github.jntakpe.fra.domain.RestEndpoint;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Publication des méthode de gestion de l'entité {@link com.github.jntakpe.fra.domain.RestEndpoint}
 *
 * @author jntakpe
 */
public interface RestEndpointRepository extends JpaRepository<RestEndpoint, Long> {


}
