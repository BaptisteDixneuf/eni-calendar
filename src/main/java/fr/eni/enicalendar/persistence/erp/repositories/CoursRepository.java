package fr.eni.enicalendar.persistence.erp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.erp.entities.Cours;

public interface CoursRepository extends JpaRepository<Cours, String> {

}
