package com.github.jntakpe.fra.config;

import com.mangofactory.swagger.configuration.SpringSwaggerConfig;
import com.mangofactory.swagger.models.dto.ApiInfo;
import com.mangofactory.swagger.plugin.EnableSwagger;
import com.mangofactory.swagger.plugin.SwaggerSpringMvcPlugin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Configuration de Swagger
 *
 * @author jntakpe
 */
@Configuration
@EnableSwagger
@ConditionalOnWebApplication
public class SwaggerConfig {

    public static final String[] API_PATTERN = {"/api/.*"};

    private static final Logger LOG = LoggerFactory.getLogger(SwaggerConfig.class);

    @Bean
    public SwaggerSpringMvcPlugin swaggerSpringMvcPlugin(SpringSwaggerConfig springSwaggerConfig) {
        LOG.debug("Generating Swagger api docs");
        SwaggerSpringMvcPlugin swagger = new SwaggerSpringMvcPlugin(springSwaggerConfig)
                .apiInfo(apiInfo())
                .includePatterns(API_PATTERN);
        swagger.build();
        return swagger;
    }

    private ApiInfo apiInfo() {
        return new ApiInfo(
                "fra",
                "Fake Rest API",
                "https://www.github.com/jntakpe/fra",
                "jntakpe@gmail.com",
                "MIT",
                "http://opensource.org/licenses/MIT"
        );
    }
}
