package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.repository.RestEndpointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Service associées à l'entité {@link com.github.jntakpe.fra.service.RestEndpointService}
 *
 * @author jntakpe
 */
@Service
public class RestEndpointService {

    public static final String REST_PREFIX = "/rest/";

    private RestEndpointRepository restEndpointRepository;

    @Autowired
    public RestEndpointService(RestEndpointRepository restEndpointRepository) {
        this.restEndpointRepository = restEndpointRepository;
    }

    /**
     * Renvoie tous les {@link com.github.jntakpe.fra.domain.RestEndpoint}
     *
     * @return la liste de tous les endpoints
     */
    @Transactional(readOnly = true)
    public List<RestEndpoint> findAll() {
        return restEndpointRepository.findAll();
    }

    /**
     * Renvoie le endpoint REST correspondant à l'URI et la méthode HTTP passées en paramètre
     * @param uri URI du endpoint REST
     * @param method méthode HTTP
     * @return endpoint REST correspondant aux paramètre sinon {@code null}
     */
    @Transactional(readOnly = true)
    public RestEndpoint findByUriAndMethod(String uri, String method) {
        return restEndpointRepository.findByUriAndMethod(uri, HttpMethod.valueOf(method));
    }

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
        RestEndpoint restEndpoint = restEndpointRepository.findByUriAndMethod(normalizeUri(uri), method);
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
        restEndpoint.setUri(normalizeUri(uri));
        return restEndpointRepository.save(restEndpoint);
    }

    /**
     * Supprime un {@link com.github.jntakpe.fra.domain.RestEndpoint} correspondant à l'identifiant
     *
     * @param id identifiant du endpoint à supprimer
     */
    @Transactional
    public void delete(Long id) {
        restEndpointRepository.delete(id);
    }

    /**
     * Normalisation des URIs REST en supprimant les slashs inutiles et en ajoutant le prefix "/rest/"
     *
     * @param uri uri initiale
     * @return l'URI normalisée
     */
    private String normalizeUri(String uri) {
        if (uri.startsWith("/rest/")) {
            return uri;
        }
        if (uri.startsWith("/")) {
            uri = uri.substring(1);
        }
        if (uri.endsWith("/")) {
            uri = uri.substring(0, uri.length() - 1);
        }
        return REST_PREFIX + uri;
    }
}
