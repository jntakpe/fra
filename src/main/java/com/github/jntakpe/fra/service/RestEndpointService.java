package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.config.FakeRestApiConfig;
import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.repository.RestEndpointRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Service associées à l'entité {@link com.github.jntakpe.fra.service.RestEndpointService}
 *
 * @author jntakpe
 */
@Service
public class RestEndpointService {

    public static final String REST_PREFIX = "/rest/";

    private static final Logger LOG = LoggerFactory.getLogger(FakeRestApiConfig.class);

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
        LOG.debug("Récupération de tous les endpoints REST");
        return restEndpointRepository.findAll();
    }

    /**
     * Renvoie le {@link com.github.jntakpe.fra.domain.RestEndpoint} correspondant à cet identifiant
     *
     * @param id identifiant du endpoint
     * @return endpoint correspondant à cet identifiant sinon {@code null}
     */
    @Transactional(readOnly = true)
    public RestEndpoint findOne(Long id) {
        LOG.debug("Recherche du endpoint correspondant à l'identifiant {}", id);
        return restEndpointRepository.findOne(id);
    }

    /**
     * Renvoie le endpoint REST correspondant à l'URI, à la méthode HTTP et aux paramètres
     *
     * @param uri    URI du endpoint REST
     * @param method méthode HTTP
     * @param params map correspondant aux paramètres du endpoint
     * @return endpoint REST correspondant aux paramètre
     */
    @Transactional(readOnly = true)
    public Optional<RestEndpoint> findMatchingEndpoint(String uri, String method, Map<String, String> params) {
        LOG.debug("Récupération des données pour l'url {}, la méthode {} et les paramètres {}", uri, method, params);
        List<RestEndpoint> endpoints = restEndpointRepository.findByUriAndMethod(uri, HttpMethod.valueOf(method));
        return endpoints.stream().filter(e -> e.toMap().equals(params)).findAny();
    }

    /**
     * Indique un endpoint avec ces paramètres n'est pas déjà créé
     *
     * @param endpoint formulaire représentant un {@link com.github.jntakpe.fra.domain.RestEndpoint}
     * @return true si les valeurs sont disponnibles
     */
    @Transactional(readOnly = true)
    public boolean isAvailable(RestEndpoint endpoint) {
        LOG.debug("Vérification de la disponibilité du endpoint {}", endpoint);
        String uri = normalizeUri(endpoint.getUri());
        Optional<RestEndpoint> opt = findMatchingEndpoint(uri, endpoint.getMethod().name(), endpoint.toMap());
        return opt.map(e -> e.getId().equals(endpoint.getId())).orElse(true);
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
        LOG.info("Enregistrement du endpoint {}", restEndpoint);
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
        LOG.info("Suppression du endpoint ayant l'identifiant : {}", id);
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
