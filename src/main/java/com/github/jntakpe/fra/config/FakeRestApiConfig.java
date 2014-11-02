package com.github.jntakpe.fra.config;

import org.apache.commons.lang3.SystemUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.MimeMappings;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.boot.orm.jpa.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * Classe mère de configuration
 *
 * @author jntakpe
 */
@Configuration
@EnableAutoConfiguration
@EntityScan("com.github.jntakpe.fra.domain")
@EnableJpaRepositories("com.github.jntakpe.fra.repository")
@ComponentScan("com.github.jntakpe.fra")
public class FakeRestApiConfig extends SpringBootServletInitializer implements EmbeddedServletContainerCustomizer {

    private static final Logger LOG = LoggerFactory.getLogger(FakeRestApiConfig.class);

    /**
     * Force l'encodage en UTF-8 en mode embedded
     *
     * @param container conteneur embedded de servlet Spring boot
     */
    @Override
    public void customize(ConfigurableEmbeddedServletContainer container) {
        MimeMappings mappings = new MimeMappings(MimeMappings.DEFAULT);
        mappings.add("html", "text/html;charset=utf-8");
        container.setMimeMappings(mappings);
    }

    /**
     * Démarre l'application en mode 'embedded'
     *
     * @param args arguments passés par le goal maven
     */
    public static void main(String[] args) {
        LOG.debug("Démarrage de l'application en mode 'embedded'");
        new SpringApplication(FakeRestApiConfig.class).run(args);
    }

    /**
     * Démarrage sur un serveur classique (Tomcat, Jetty, JBoss, etc ...)
     *
     * @param application builder de la configuration Spring Boot
     * @return la configuration prête à être lancée
     */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        LOG.debug("Démarrage de l'application en mode 'classique'");
        String profile = SystemUtils.IS_OS_LINUX ? Constants.PROD_PROFILE : Constants.DEV_PROFILE;
        LOG.debug("Profil '{}' sélectionné", profile);
        application.profiles(profile);
        return application.sources(FakeRestApiConfig.class);
    }

}
