package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.erp.entities.Module;

public interface ModuleServiceInterface {

	List<Module> findModuleByFormation(String codeFormation);

	List<Module> findModuleByFormationAndLibelle(String codeFormation, String libelle);

	Module findModuleById(Integer id);

}
