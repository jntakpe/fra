package com.github.jntakpe.fra.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Bean représentant un paramètre de {@link com.github.jntakpe.fra.domain.RestEndpoint}
 *
 * @author jntakpe
 */
@Entity
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"name", "endpoint_id"}))
public class EndpointParam extends GenericDomain {

    @NotEmpty
    private String name;

    private String value = "";

    @JsonIgnore
    @ManyToOne(optional = false)
    private RestEndpoint endpoint;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public RestEndpoint getEndpoint() {
        return endpoint;
    }

    public void setEndpoint(RestEndpoint endpoint) {
        this.endpoint = endpoint;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;

        EndpointParam that = (EndpointParam) o;

        if (endpoint != null ? !endpoint.equals(that.endpoint) : that.endpoint != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (endpoint != null ? endpoint.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("name", name)
                .append("value", value)
                .append("endpoint", endpoint)
                .toString();
    }
}
