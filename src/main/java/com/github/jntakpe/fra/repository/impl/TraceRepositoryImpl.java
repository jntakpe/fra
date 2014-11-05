package com.github.jntakpe.fra.repository.impl;

import com.github.jntakpe.fra.domain.Request;
import com.github.jntakpe.fra.repository.RequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.trace.InMemoryTraceRepository;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.Map;

/**
 * Implémentation permettant lier une {@link org.springframework.boot.actuate.trace.Trace} à une
 * {@link com.github.jntakpe.fra.domain.Request}
 *
 * @author jntakpe
 * @see org.springframework.boot.actuate.trace.TraceRepository
 */
@Repository
public class TraceRepositoryImpl extends InMemoryTraceRepository {

    @Autowired
    private RequestRepository requestRepository;

    /**
     * {@inheritDoc}
     */
    @Override
    public void add(Map<String, Object> traceInfo) {
        super.add(traceInfo);
        if (isRestRequest(traceInfo)) {
            requestRepository.save(map(traceInfo));
        }
    }

    private Request map(Map<String, Object> traceInfo) {
        Request request = new Request();
        request.setTimestamp(new Date());
        request.setPath(((String) traceInfo.get("path")));
        request.setMethod(HttpMethod.valueOf((String) traceInfo.get("method")));
        Map<String, Map<String, String>> headers = (Map<String, Map<String, String>>) traceInfo.get("headers");
        String code = headers.get("response").get("status");
        request.setStatus(HttpStatus.valueOf(Integer.parseInt(code)));
        return request;
    }

    private boolean isRestRequest(Map<String, Object> traceInfo) {
        return ((String) traceInfo.get("path")).startsWith("/rest");
    }


}
