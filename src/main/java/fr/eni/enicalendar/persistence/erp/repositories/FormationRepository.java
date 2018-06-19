package fr.eni.enicalendar.persistence.erp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.eni.enicalendar.persistence.erp.entities.Formation;

/**
 * JpaRepository extends PagingAndSortingRepository which in turn extends
 * CrudRepository.
 */
public interface FormationRepository extends JpaRepository<Formation, String> {

	/*
	 * @Query("select f.* from Formation f" +
	 * " JOIN UniteParFormation ON Formation.CODEFORMATION = UniteParFormation.CODEFORMATION"
	 * +
	 * " JOIN UniteFormation ON UniteParFormation.ID = UniteFormation.IdUniteFormation"
	 * + " JOIN ModuleParUnite ON ModuleParUnite.IdUnite = UniteParFormation.Id" +
	 * " JOIN Module ON Module.IdModule = ModuleParUnite.IdModule" +
	 * " WHERE Formation.CODEFORMATION = '17CDI'" +
	 * " AND UniteParFormation.Position = 0;")
	 */

	@Query("select f from Formation f" + " JOIN UniteParFormation u ON f.codeFormation = u.codeFormation")
	Iterable<Formation> test();

}
