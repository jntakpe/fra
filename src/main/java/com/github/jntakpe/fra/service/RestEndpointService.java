package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.config.FakeRestApiConfig;
import com.github.jntakpe.fra.domain.RestEndpoint;
import com.github.jntakpe.fra.repository.RestEndpointRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * Service associées à l'entité {@link com.github.jntakpe.fra.service.RestEndpointService}
 *
 * @author jntakpe
 */
@Service
public class RestEndpointService {

    public static final String REST_PREFIX = "/rest/";

    public static final String ENDPOINTS_CACHE = "endpoints";

    public static final String ENDPOINT_MATCH_CACHE = "endpointMatch";

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
    @Cacheable(ENDPOINTS_CACHE)
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
     * Renvoie la réponse contenant le endpoint REST correspondant à l'URI, à la méthode HTTP et aux paramètres après un
     * certain temps
     *
     * @param uri    URI du endpoint REST
     * @param method méthode HTTP
     * @param params map correspondant aux paramètres du endpoint
     * @return réponse contenant endpoint REST correspondant aux paramètre
     */
    public ResponseEntity<String> delayFindMatchingEndpoint(String uri, String method, Map<String, String> params) {
        Optional<RestEndpoint> matchingEndpoint = findMatchingEndpoint(uri, method, params);
        if (matchingEndpoint.isPresent()) {
            RestEndpoint endpoint = matchingEndpoint.get();
            if (endpoint.getDelay() != null && endpoint.getDelay() > 0) {
                return applyDelay(endpoint);
            } else {
                return new ResponseEntity<>(endpoint.getContent(), HttpStatus.OK);
            }
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
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
    @CacheEvict(value = {ENDPOINTS_CACHE, ENDPOINT_MATCH_CACHE}, allEntries = true)
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
    @CacheEvict(value = {ENDPOINTS_CACHE, ENDPOINT_MATCH_CACHE}, allEntries = true)
    public void delete(Long id) {
        LOG.info("Suppression du endpoint ayant l'identifiant : {}", id);
        restEndpointRepository.delete(id);
    }

    /**
     * Renvoie le endpoint REST correspondant à l'URI, à la méthode HTTP et aux paramètres
     *
     * @param uri    URI du endpoint REST
     * @param method méthode HTTP
     * @param params map correspondant aux paramètres du endpoint
     * @return endpoint REST correspondant aux paramètre
     */
    @Cacheable(ENDPOINT_MATCH_CACHE)
    @Transactional(readOnly = true)
    public Optional<RestEndpoint> findMatchingEndpoint(String uri, String method, Map<String, String> params) {
        LOG.debug("Récupération des données pour l'url {}, la méthode {} et les paramètres {}", uri, method, params);
        List<RestEndpoint> endpoints = restEndpointRepository.findByUriAndMethod(uri, HttpMethod.valueOf(method));
        return endpoints.stream().filter(e -> e.toMap().equals(params)).findAny();
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

    private ResponseEntity<String> applyDelay(RestEndpoint endpoint) {
        try {
            ScheduledExecutorService executorService = Executors.newSingleThreadScheduledExecutor();
            return new ResponseEntity<>(executorService.schedule(endpoint::getContent, endpoint.getDelay(),
                    TimeUnit.MILLISECONDS).get(), HttpStatus.OK);
        } catch (InterruptedException | ExecutionException e) {
            LOG.error("Erreur lors de la récupération du endpoint {}", endpoint.getUri(), e);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
