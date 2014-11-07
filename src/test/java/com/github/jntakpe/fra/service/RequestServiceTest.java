package com.github.jntakpe.fra.service;

import com.github.jntakpe.fra.config.FakeRestApiConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import static org.assertj.core.api.Assertions.assertThat;

@SpringApplicationConfiguration(classes = FakeRestApiConfig.class)
public class RequestServiceTest extends AbstractTestNGSpringContextTests {

    public static final String COUNT_QUERY = "SELECT COUNT(*) FROM request";

    @Autowired
    private RequestService requestService;

    @Autowired
    private DataSource dataSource;

    private JdbcTemplate jdbcTemplate;

    @PostConstruct
    public void setUp() {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Test
    public void testClean() throws Exception {
        Integer initSize = jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class);
        requestService.clean();
        assertThat(jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class)).isEqualTo(initSize - 2);
    }

    @Test
    public void testFindAll() throws Exception {
        Integer size = jdbcTemplate.queryForObject(COUNT_QUERY, Integer.class);
        assertThat(size).isNotZero();
        assertThat(requestService.findAll()).hasSize(size);
    }
}