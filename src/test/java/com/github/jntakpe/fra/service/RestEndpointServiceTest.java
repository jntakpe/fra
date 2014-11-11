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
import java.util.Optional;

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
        assertThat(restEndpointService.findMatchingEndpoint("toto/au/ski", "DELETE", null)).isEqualTo(empty);
        assertThat(restEndpointService.findMatchingEndpoint("/rest/hello", "GET", null)).isEqualTo(empty);
        assertThat(restEndpointService.findMatchingEndpoint("/rest/hello", "POST", null)).isEqualTo(empty);
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

    @Test(enabled = false)
    public void testDelete() throws Exception {
        Integer initSize = jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class);
        assertThat(initSize).isNotZero();
        restEndpointService.delete(restEndpointService.findAll().get(0).getId());
        assertThat(jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class)).isEqualTo(initSize - 1);
    }
}