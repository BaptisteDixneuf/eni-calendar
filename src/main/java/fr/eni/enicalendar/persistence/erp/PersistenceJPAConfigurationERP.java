package fr.eni.enicalendar.persistence.erp;

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
@PropertySource({ "classpath:eni-erp.properties" })
@EnableJpaRepositories(basePackages = "fr.eni.enicalendar.persistence.erp.repositories", entityManagerFactoryRef = "erpEntityManager", transactionManagerRef = "erpTransactionManager")
public class PersistenceJPAConfigurationERP {

	@Autowired
	private Environment env;

	@Bean
	@Primary
	public LocalContainerEntityManagerFactoryBean erpEntityManager() {
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		em.setDataSource(erpDataSource());
		em.setPackagesToScan(new String[] { "fr.eni.enicalendar.persistence.erp.entities" });

		HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		HashMap<String, Object> properties = new HashMap<>();
		properties.put("hibernate.hbm2ddl.auto", env.getProperty("erp.datasource.hibernate.ddl.auto"));
		properties.put("hibernate.dialect", env.getProperty("erp.datasource.hibernate.dialect"));
		properties.put("hibernate.show_sql", env.getProperty("erp.datasource.hibernate.show_sql"));
		em.setJpaPropertyMap(properties);

		return em;
	}

	@Primary
	@Bean
	public DataSource erpDataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getProperty("erp.datasource.driver.class.name"));
		dataSource.setUrl(env.getProperty("erp.datasource.url"));
		dataSource.setUsername(env.getProperty("erp.datasource.username"));
		dataSource.setPassword(env.getProperty("erp.datasource.password"));

		return dataSource;
	}

	@Primary
	@Bean
	public PlatformTransactionManager erpTransactionManager() {

		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(erpEntityManager().getObject());
		return transactionManager;
	}
}