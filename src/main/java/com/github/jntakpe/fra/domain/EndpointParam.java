package com.github.jntakpe.fra.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;

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
@Table(uniqueConstraints = @UniqueConstraint(columnNames = {"name", "value", "restEndpoint"}))
public class EndpointParam extends GenericDomain {

    private String name;

    private String value;

    @ManyToOne(optional = false)
    private RestEndpoint restEndpoint;

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

    public RestEndpoint getRestEndpoint() {
        return restEndpoint;
    }

    public void setRestEndpoint(RestEndpoint restEndpoint) {
        this.restEndpoint = restEndpoint;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;

        EndpointParam that = (EndpointParam) o;

        if (restEndpoint != null ? !restEndpoint.equals(that.restEndpoint) : that.restEndpoint != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (value != null ? !value.equals(that.value) : that.value != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (value != null ? value.hashCode() : 0);
        result = 31 * result + (restEndpoint != null ? restEndpoint.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("name", name)
                .append("value", value)
                .append("endpoint", restEndpoint)
                .toString();
    }
}
