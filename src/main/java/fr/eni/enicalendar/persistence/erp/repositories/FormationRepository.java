package fr.eni.enicalendar.persistence.erp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.erp.entities.Formation;

/**
 * JpaRepository extends PagingAndSortingRepository which in turn extends
 * CrudRepository.
 */
public interface FormationRepository extends JpaRepository<Formation, String> {

}
