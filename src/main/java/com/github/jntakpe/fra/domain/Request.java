package com.github.jntakpe.fra.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * Bean représentant une requête HTTP
 *
 * @author jntakpe
 */
@Entity
public class Request extends GenericDomain {

    @NotNull
    private String path;

    @NotNull
    @Enumerated(EnumType.STRING)
    private HttpStatus status;

    @NotNull
    @Enumerated(EnumType.STRING)
    private HttpMethod method;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    private Date timestamp;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public HttpStatus getStatus() {
        return status;
    }

    public void setStatus(HttpStatus status) {
        this.status = status;
    }

    public HttpMethod getMethod() {
        return method;
    }

    public void setMethod(HttpMethod method) {
        this.method = method;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;

        Request request = (Request) o;

        if (method != request.method) return false;
        if (path != null ? !path.equals(request.path) : request.path != null) return false;
        if (timestamp != null ? !timestamp.equals(request.timestamp) : request.timestamp != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (path != null ? path.hashCode() : 0);
        result = 31 * result + (method != null ? method.hashCode() : 0);
        result = 31 * result + (timestamp != null ? timestamp.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("path", path)
                .append("status", status)
                .append("method", method)
                .toString();
    }
}
