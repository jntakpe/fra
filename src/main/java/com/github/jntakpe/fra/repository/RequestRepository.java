package com.github.jntakpe.fra.repository;

import com.github.jntakpe.fra.domain.Request;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;

/**
 * Publication des méthodes de gestion de l'entité {@link com.github.jntakpe.fra.domain.Request}
 *
 * @author jntakpe
 */
public interface RequestRepository extends JpaRepository<Request, Long> {

    List<Request> findByTimestampBefore(Date timestamp);

}
