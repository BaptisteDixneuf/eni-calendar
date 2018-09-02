package fr.eni.enicalendar.persistence.erp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.eni.enicalendar.persistence.erp.entities.Module;

public interface ModuleRepository extends JpaRepository<Module, Integer> {

	@Query("select m from Formation f " + "JOIN UniteParFormation upf ON f.codeFormation = upf.codeFormation "
			+ "JOIN UniteFormation uf ON upf.idUniteFormation = uf.id "
			+ "JOIN ModuleParUnite mpu ON mpu.idUnite = upf.id " + "JOIN Module m ON m.id = mpu.idModule"
			+ " WHERE f.codeFormation = :codeFormation" + " AND upf.position = 0")
	List<Module> findModuleByFormation(@Param("codeFormation") String codeFormation);

	@Query("select m from Formation f " + "JOIN UniteParFormation upf ON f.codeFormation = upf.codeFormation "
			+ "JOIN UniteFormation uf ON upf.idUniteFormation = uf.id "
			+ "JOIN ModuleParUnite mpu ON mpu.idUnite = upf.id " + "JOIN Module m ON m.id = mpu.idModule"
			+ " WHERE f.codeFormation = :codeFormation" + " AND upf.position = 0" + " AND m.libelle LIKE %:libelle%")
	List<Module> findModuleByFormationAndLibelle(@Param("codeFormation") String codeFormation,
			@Param("libelle") String libelle);
}
