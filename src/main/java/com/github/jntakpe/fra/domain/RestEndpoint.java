package com.github.jntakpe.fra.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.Entity;

/**
 * Bean représentant un endpoint REST
 *
 * @author jntakpe
 */
@Entity
public class RestEndpoint extends GenericDomain {

    private String uri;

    private String method;

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;

        RestEndpoint that = (RestEndpoint) o;

        if (method != null ? !method.equals(that.method) : that.method != null) return false;
        if (uri != null ? !uri.equals(that.uri) : that.uri != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (uri != null ? uri.hashCode() : 0);
        result = 31 * result + (method != null ? method.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("uri", uri)
                .append("method", method)
                .toString();
    }
}
