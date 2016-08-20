package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.config.FakeRestApiConfig;
import com.github.jntakpe.fra.domain.Request;
import com.github.jntakpe.fra.repository.RequestRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;

/**
 * Services associés à l'entité {@link com.github.jntakpe.fra.domain.Request}
 *
 * @author jntakpe
 */
@Service
public class RequestService {

    private static final Logger LOG = LoggerFactory.getLogger(FakeRestApiConfig.class);

    private RequestRepository requestRepository;

    @Autowired
    public RequestService(RequestRepository requestRepository) {
        this.requestRepository = requestRepository;
    }

    /**
     * Supprime tous les jours à 4h du matin toutes les requêtes de la semaine passée
     */
    @Transactional
    @Scheduled(cron = "0 4 * * * *")
    public void clean() {
        Instant limit = Instant.now().minus(7, ChronoUnit.DAYS);
        Date limitDate = Date.from(limit);
        List<Request> requests = requestRepository.findByTimestampBefore(limitDate);
        LOG.info("Suppression de {} requêtes effectuées avant le : {}", requests.size(), limit);
        requestRepository.delete(requests);
    }

    /**
     * Récupère toutes les requêtes
     *
     * @return la liste des requêtes
     */
    @Transactional(readOnly = true)
    public List<Request> findAll() {
        LOG.debug("Récupération de toutes requêtes");
        return requestRepository.findAll();
    }

    @Transactional(readOnly = true)
    public Page<Request> findLastRequest() {
        LOG.debug("Récupération du nombre total de requêtes traitées par l'application");
        return requestRepository.findAll(new PageRequest(0, 1, Sort.Direction.DESC, "id"));
    }
}
