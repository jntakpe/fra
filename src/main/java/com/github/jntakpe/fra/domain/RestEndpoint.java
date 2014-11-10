package com.github.jntakpe.fra.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.http.HttpMethod;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Bean représentant un endpoint REST
 *
 * @author jntakpe
 */
@Entity
public class RestEndpoint extends GenericDomain {

    @NotNull
    private String uri;

    @NotNull
    @Enumerated(EnumType.STRING)
    private HttpMethod method;

    @NotNull
    @Column(columnDefinition = "TEXT")
    private String content;

    @OneToMany(mappedBy = "endpoint", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Set<EndpointParam> params = new HashSet<>();

    /**
     * Transforme un set de {@link com.github.jntakpe.fra.domain.EndpointParam} en map
     *
     * @return une map prenant en clé le nom du paramètre et en valeur la valeur pour ce nom
     */
    public Map<String, String> toMap() {
        return params.stream().collect(Collectors.toMap(EndpointParam::getName, EndpointParam::getValue));
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public HttpMethod getMethod() {
        return method;
    }

    public void setMethod(HttpMethod method) {
        this.method = method;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Set<EndpointParam> getParams() {
        return params;
    }

    public void setParams(Set<EndpointParam> params) {
        this.params = params;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;

        RestEndpoint that = (RestEndpoint) o;

        if (method != that.method) return false;
        if (params != null ? !params.equals(that.params) : that.params != null) return false;
        if (uri != null ? !uri.equals(that.uri) : that.uri != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (uri != null ? uri.hashCode() : 0);
        result = 31 * result + (method != null ? method.hashCode() : 0);
        result = 31 * result + (params != null ? params.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("uri", uri)
                .append("method", method)
                .append("content", content)
                .append("params", params)
                .toString();
    }
}
