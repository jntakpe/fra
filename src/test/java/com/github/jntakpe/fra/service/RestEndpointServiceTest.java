package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.config.FakeRestApiConfig;
import com.github.jntakpe.fra.domain.RestEndpoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.HttpMethod;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import javax.sql.DataSource;

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
        restEndpoint.setId(1L);
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
    }
}