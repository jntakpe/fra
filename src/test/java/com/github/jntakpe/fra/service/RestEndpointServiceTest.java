package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.config.FakeRestApiConfig;
import com.github.jntakpe.fra.domain.EndpointParam;
import com.github.jntakpe.fra.domain.RestEndpoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.HttpMethod;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import javax.sql.DataSource;
import java.util.*;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * Test des services associés à l'entité {@link com.github.jntakpe.fra.domain.RestEndpoint}
 *
 * @author jntakpe
 */
@SpringApplicationConfiguration(classes = FakeRestApiConfig.class)
public class RestEndpointServiceTest extends AbstractTestNGSpringContextTests {

    public static final String COUNT_QUERY = "SELECT COUNT(*) FROM rest_endpoint";

    @Autowired
    private RestEndpointService restEndpointService;

    @Autowired
    private DataSource dataSource;

    private JdbcTemplate jdbcTemplate;

    @BeforeClass
    public void setUp() {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Test
    public void testFindAll() throws Exception {
        Integer size = jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class);
        assertThat(size).isNotZero();
        assertThat(restEndpointService.findAll()).hasSize(size);
    }

    @Test
    public void testFindOne() throws Exception {
        assertThat(restEndpointService.findOne(9999999L)).isNull();
        assertThat(restEndpointService.findOne(restEndpointService.findAll().get(0).getId())).isNotNull();
    }

    @Test
    public void testFindByUriAndMethod() throws Exception {
        Optional<RestEndpoint> empty = Optional.<RestEndpoint>empty();
        Map<String, String> params = new HashMap<>();
        assertThat(restEndpointService.delayFindMatchingEndpoint("toto/au/ski", "DELETE", params)).isEqualTo(empty);
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello", "POST", params)).isEqualTo(empty);
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello", "GET", params)).isNotEqualTo(empty);
        params.put("say", "coucou");
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello", "GET", params)).isEqualTo(empty);
        params.put("say", "hello");
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello", "GET", params)).isEqualTo(empty);
        params.put("toto", "titi");
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello", "GET", params)).isNotEqualTo(empty);
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello/joss", "GET", params)).isEqualTo(empty);
        params.remove("say");
        assertThat(restEndpointService.delayFindMatchingEndpoint("/rest/hello/joss", "GET", params)).isNotEqualTo(empty);
    }

    @Test
    public void testIsAvailable() throws Exception {
        RestEndpoint restEndpoint = new RestEndpoint();
        restEndpoint.setMethod(HttpMethod.GET);
        restEndpoint.setUri("/toto");
        assertThat(restEndpointService.isAvailable(restEndpoint)).isTrue();
        restEndpoint.setUri("/hello");
        assertThat(restEndpointService.isAvailable(restEndpoint)).isFalse();
        restEndpoint.setMethod(HttpMethod.POST);
        assertThat(restEndpointService.isAvailable(restEndpoint)).isTrue();
        restEndpoint.setMethod(HttpMethod.GET);
        restEndpoint.setId(99L);
        assertThat(restEndpointService.isAvailable(restEndpoint)).isFalse();
        restEndpoint.setId(4L);
        assertThat(restEndpointService.isAvailable(restEndpoint)).isTrue();
    }

    @Test
    public void testSave() throws Exception {
        RestEndpoint foo = new RestEndpoint();
        foo.setUri("/foo");
        foo.setMethod(HttpMethod.GET);
        foo.setContent("foo");
        Integer initSize = jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class);
        RestEndpoint savedFoo = restEndpointService.save(foo);
        assertThat(jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class)).isEqualTo(initSize + 1);
        assertThat(savedFoo.getId()).isNotNull();
        assertThat(savedFoo.getUri()).isNotNull().isEqualTo("/rest/foo");
        savedFoo.setMethod(HttpMethod.POST);
        RestEndpoint editedFoo = restEndpointService.save(savedFoo);
        assertThat(editedFoo.getUri()).isEqualTo(savedFoo.getUri());
        assertThat(editedFoo.getMethod()).isEqualTo(HttpMethod.POST);
        EndpointParam endpointParam = new EndpointParam();
        endpointParam.setEndpoint(editedFoo);
        endpointParam.setName("param");
        endpointParam.setValue("test");
        Set<EndpointParam> params = new HashSet<>();
        params.add(endpointParam);
        editedFoo.setParams(params);
        assertThat(restEndpointService.save(editedFoo).getParams()).isNotEmpty();
    }

    @Test(enabled = false)
    public void testDelete() throws Exception {
        Integer initSize = jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class);
        assertThat(initSize).isNotZero();
        restEndpointService.delete(restEndpointService.findAll().get(0).getId());
        assertThat(jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class)).isEqualTo(initSize - 1);
    }
}