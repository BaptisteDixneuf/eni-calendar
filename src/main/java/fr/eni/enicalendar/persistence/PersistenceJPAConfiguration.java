package fr.eni.enicalendar.persistence;

import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableJpaRepositories
@EnableTransactionManagement
@Configuration
@ComponentScan(basePackages = { "fr.eni.enicalendar.persistence" })
@PropertySource(value = { "classpath:eni.properties" })
public class PersistenceJPAConfiguration {

    @Autowired
    private Environment environment;

    private static final Logger LOGGER = LoggerFactory.getLogger(PersistenceJPAConfiguration.class);

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(dataSource());
        em.setPackagesToScan("fr.eni.enicalendar.persistence.entities");

        JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);
        em.setJpaProperties(additionalProperties());

        return em;
    }

    @Bean
    public DataSource dataSource() {

        DataSource dataSource = null;

        try {

            if (null != environment.getProperty("form.datasource.jndi")) {
                Context initialContext = new InitialContext();
                dataSource = (DataSource) initialContext.lookup(environment.getProperty("form.datasource.jndi"));
            }
            else {
                BasicDataSource dataSourceBasic = new BasicDataSource();
                if (null != environment.getProperty("form.datasource.driver.class.name")) {
                    dataSourceBasic.setDriverClassName(environment.getProperty("form.datasource.driver.class.name"));
                }
                if (null != environment.getProperty("form.datasource.url")) {
                    dataSourceBasic.setUrl(environment.getProperty("form.datasource.url"));
                }
                if (null != environment.getProperty("form.datasource.username")) {
                    dataSourceBasic.setUsername(environment.getProperty("form.datasource.username"));
                }
                if (null != environment.getProperty("form.datasource.password")) {
                    dataSourceBasic.setPassword(environment.getProperty("form.datasource.password"));
                }

                if (null != environment.getProperty("form.datasource.access.to.underlying.connection.allowed")) {
                    dataSourceBasic.setAccessToUnderlyingConnectionAllowed(Boolean.valueOf(environment
                            .getProperty("form.datasource.access.to.underlying.connection.allowed")));
                }
                if (null != environment.getProperty("form.datasource.default.auto.commit")) {
                    dataSourceBasic.setDefaultAutoCommit(Boolean.valueOf(environment.getProperty("form.datasource.default.auto.commit")));
                }
                if (null != environment.getProperty("form.datasource.default.catalog")) {
                    dataSourceBasic.setDefaultCatalog(environment.getProperty("form.datasource.default.catalog"));
                }
                if (null != environment.getProperty("form.datasource.default.read.only")) {
                    dataSourceBasic.setDefaultCatalog(environment.getProperty("form.datasource.default.read.only"));
                }
                if (null != environment.getProperty("form.datasource.default.transaction.isolation")) {
                    dataSourceBasic.setDefaultTransactionIsolation(Integer.valueOf(environment.getProperty("form.datasource.default.transaction.isolation")));
                }
                if (null != environment.getProperty("form.datasource.initial.size")) {
                    dataSourceBasic.setInitialSize(Integer.valueOf(environment.getProperty("form.datasource.initial.size")));
                }
                if (null != environment.getProperty("form.datasource.log.abandoned")) {
                    dataSourceBasic.setLogAbandoned(Boolean.valueOf(environment.getProperty("form.datasource.log.abandoned")));
                }
                if (null != environment.getProperty("form.datasource.login.timeout")) {
                    dataSourceBasic.setLoginTimeout(Integer.valueOf(environment.getProperty("form.datasource.login.timeout")));
                }
                if (null != environment.getProperty("form.datasource.max.active")) {
                    dataSourceBasic.setMaxTotal(Integer.valueOf(environment.getProperty("form.datasource.max.active")));
                }
                if (null != environment.getProperty("form.datasource.max.idle")) {
                    dataSourceBasic.setMaxIdle(Integer.valueOf(environment.getProperty("form.datasource.max.idle")));
                }
                if (null != environment.getProperty("form.datasource.max.open.prepared.statements")) {
                    dataSourceBasic.setMaxOpenPreparedStatements(Integer.valueOf(environment.getProperty("form.datasource.max.open.prepared.statements")));
                }
                if (null != environment.getProperty("form.datasource.max.wait")) {
                    dataSourceBasic.setMaxWaitMillis(Integer.valueOf(environment.getProperty("form.datasource.max.wait")));
                }
                if (null != environment.getProperty("form.datasource.min.evictable.idle.time.millis")) {
                    dataSourceBasic.setMinEvictableIdleTimeMillis(Integer.valueOf(environment.getProperty("form.datasource.min.evictable.idle.time.millis")));
                }
                if (null != environment.getProperty("form.datasource.min.idle")) {
                    dataSourceBasic.setMinIdle(Integer.valueOf(environment.getProperty("form.datasource.min.idle")));
                }
                if (null != environment.getProperty("form.datasource.num.tests.per.eviction.run")) {
                    dataSourceBasic.setNumTestsPerEvictionRun(Integer.valueOf(environment.getProperty("form.datasource.num.tests.per.eviction.run")));
                }
                if (null != environment.getProperty("form.datasource.pool.prepared.statements")) {
                    dataSourceBasic.setPoolPreparedStatements(Boolean.valueOf(environment.getProperty("form.datasource.pool.prepared.statements")));
                }
                if (null != environment.getProperty("form.datasource.remove.abandoned")) {
                    dataSourceBasic.setRemoveAbandonedOnBorrow(Boolean.valueOf(environment.getProperty("form.datasource.remove.abandoned")));
                }
                if (null != environment.getProperty("form.datasource.remove.abandoned.timeout")) {
                    dataSourceBasic.setRemoveAbandonedTimeout(Integer.valueOf(environment.getProperty("form.datasource.remove.abandoned.timeout")));
                }
                if (null != environment.getProperty("form.datasource.test.on.borrow")) {
                    dataSourceBasic.setTestOnBorrow(Boolean.valueOf(environment.getProperty("form.datasource.test.on.borrow")));
                }
                if (null != environment.getProperty("form.datasource.test.on.return")) {
                    dataSourceBasic.setTestOnReturn(Boolean.valueOf(environment.getProperty("form.datasource.test.on.return")));
                }
                if (null != environment.getProperty("form.datasource.test.while.idle")) {
                    dataSourceBasic.setTestWhileIdle(Boolean.valueOf(environment.getProperty("form.datasource.test.while.idle")));
                }
                if (null != environment.getProperty("form.datasource.time.between.eviction.runs.millis")) {
                    dataSourceBasic.setTimeBetweenEvictionRunsMillis(Integer.valueOf(environment
                            .getProperty("form.datasource.time.between.eviction.runs.millis")));
                }
                if (null != environment.getProperty("form.datasource.validation.query")) {
                    dataSourceBasic.setValidationQuery(environment.getProperty("form.datasource.validation.query"));
                }
                if (null != environment.getProperty("form.datasource.validation.query.timeout")) {
                    dataSourceBasic.setValidationQueryTimeout(Integer.valueOf(environment.getProperty("form.datasource.validation.query.timeout")));
                }
                return dataSourceBasic;
            }
        }
        catch (Exception e) {
            LOGGER.error("Problème de paramétrage datasource ", e);
        }
        return dataSource;
    }

    @Bean
    public PlatformTransactionManager transactionManager(EntityManagerFactory emf) {
        JpaTransactionManager transactionManager = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(emf);

        return transactionManager;
    }

    Properties additionalProperties() {
        Properties properties = new Properties();

        if (null != environment.getProperty("form.datasource.hibernate.dialect")) {
            properties.setProperty("hibernate.dialect", environment.getProperty("form.datasource.hibernate.dialect"));
        }

        if (null != environment.getProperty("form.datasource.hibernate.connection.release_mode")) {
            properties.setProperty("hibernate.connection.release_mode", environment.getProperty("form.datasource.hibernate.connection.release_mode"));
        }

        if (null != environment.getProperty("form.datasource.hibernate.namingStrategy")) {
            properties.setProperty("namingStrategy", environment.getProperty("form.datasource.hibernate.namingStrategy"));
        }

        if (null != environment.getProperty("form.datasource.ddl.auto")) {
            properties.setProperty("hibernate.hbm2ddl.auto", environment.getProperty("form.datasource.ddl.auto"));
        }
   
        return properties;
    }
}