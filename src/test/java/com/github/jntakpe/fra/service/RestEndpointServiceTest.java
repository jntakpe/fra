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
        assertThat(restEndpointService.isAvailable(null, "/toto", HttpMethod.GET)).isTrue();
        assertThat(restEndpointService.isAvailable(null, "/hello", HttpMethod.GET)).isFalse();
        assertThat(restEndpointService.isAvailable(null, "/hello", HttpMethod.POST)).isTrue();
        assertThat(restEndpointService.isAvailable(99L, "/hello", HttpMethod.GET)).isFalse();
        assertThat(restEndpointService.isAvailable(1L, "/hello", HttpMethod.GET)).isTrue();

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