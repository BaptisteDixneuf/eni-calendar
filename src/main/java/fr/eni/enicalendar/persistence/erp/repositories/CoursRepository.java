package fr.eni.enicalendar.persistence.erp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.eni.enicalendar.persistence.erp.entities.Cours;

public interface CoursRepository extends JpaRepository<Cours, String> {

	@Query("select c from Formation f " + "JOIN UniteParFormation upf ON f.codeFormation = upf.codeFormation "
			+ "JOIN UniteFormation uf ON upf.idUniteFormation = uf.id "
			+ "JOIN ModuleParUnite mpu ON mpu.idUnite = upf.id " + "JOIN Module m ON m.id = mpu.idModule "
			+ "JOIN Cours c ON c.idModule = m.id " + " WHERE f.codeFormation = :codeFormation"
			+ " AND upf.position = 0")
	List<Cours> findCoursByFormation(@Param("codeFormation") String codeFormation);

	@Query("select c from Formation f " + "JOIN UniteParFormation upf ON f.codeFormation = upf.codeFormation "
			+ "JOIN UniteFormation uf ON upf.idUniteFormation = uf.id "
			+ "JOIN ModuleParUnite mpu ON mpu.idUnite = upf.id " + "JOIN Module m ON m.id = mpu.idModule "
			+ "JOIN Cours c ON c.idModule = m.id " + "JOIN Lieu l ON c.codeLieu = l.codeLieu "
			+ "WHERE f.codeFormation = :codeFormation " + "AND upf.position = 0 " + "AND l.codeLieu = :codeLieu")
	List<Cours> findCoursByFormationAndLieu(@Param("codeFormation") String codeFormation,
			@Param("codeLieu") Integer codeLieu);

}
