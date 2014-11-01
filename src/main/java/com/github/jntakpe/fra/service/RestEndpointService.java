package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.repository.RestEndpointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service associées à l'entité {@link com.github.jntakpe.fra.service.RestEndpointService}
 *
 * @author jntakpe
 */
@Service
public class RestEndpointService {

    @Autowired
    private RestEndpointRepository restEndpointRepository;

    /**
     * Indique si le couple uri et méthode HTTP est disponnible
     *
     * @param id     identifiant dans le cas d'une modification
     * @param uri    uri du endpoint
     * @param method méthode HTTP du endpoint
     * @return true si les valeurs sont disponnibles
     */
    @Transactional(readOnly = true)
    public boolean isAvailable(Long id, String uri, HttpMethod method) {
        RestEndpoint restEndpoint = restEndpointRepository.findByUriAndMethod(uri, method);
        return restEndpoint == null || restEndpoint.getId().equals(id);
    }

    /**
     * Enregistre un {@link com.github.jntakpe.fra.domain.RestEndpoint} en mettant en minuscules l'URI et en supprimant
     * le slash  de fin d'URI
     *
     * @param restEndpoint le endpoint à enregistrer
     * @return le endpoint enregistré (objet différent de celui passé en paramètre)
     */
    @Transactional
    public RestEndpoint save(RestEndpoint restEndpoint) {
        String uri = restEndpoint.getUri().toLowerCase();
        if (uri.endsWith("/")) {
            uri = uri.substring(0, uri.length() - 1);
        }
        restEndpoint.setUri(uri);
        return restEndpointRepository.save(restEndpoint);
    }
}
