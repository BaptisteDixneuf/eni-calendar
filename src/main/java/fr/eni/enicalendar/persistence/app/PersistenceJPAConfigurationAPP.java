package fr.eni.enicalendar.persistence.app;

import java.util.HashMap;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

@Configuration
@PropertySource({ "classpath:eni-app.properties" })
@EnableJpaRepositories(basePackages = "fr.eni.enicalendar.persistence.app.repositories", entityManagerFactoryRef = "appEntityManager", transactionManagerRef = "appTransactionManager")
public class PersistenceJPAConfigurationAPP {

	@Autowired
	private Environment env;

	@Bean
	@Primary
	public LocalContainerEntityManagerFactoryBean appEntityManager() {
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		em.setDataSource(appDataSource());
		em.setPackagesToScan(new String[] { "fr.eni.enicalendar.persistence.app.entities" });

		HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		HashMap<String, Object> properties = new HashMap<>();
		properties.put("hibernate.hbm2ddl.auto", env.getProperty("app.datasource.hibernate.ddl.auto"));
		properties.put("hibernate.dialect", env.getProperty("app.datasource.hibernate.dialect"));
		properties.put("hibernate.show_sql", env.getProperty("aapp.datasource.hibernate.show_sql"));
		em.setJpaPropertyMap(properties);

		return em;
	}

	@Primary
	@Bean
	public DataSource appDataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getProperty("app.datasource.driver.class.name"));
		dataSource.setUrl(env.getProperty("app.datasource.url"));
		dataSource.setUsername(env.getProperty("app.datasource.username"));
		dataSource.setPassword(env.getProperty("app.datasource.password"));

		return dataSource;
	}

	@Primary
	@Bean
	public PlatformTransactionManager appTransactionManager() {

		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(appEntityManager().getObject());
		return transactionManager;
	}
}