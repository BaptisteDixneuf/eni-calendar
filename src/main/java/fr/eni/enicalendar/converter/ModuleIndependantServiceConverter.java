package fr.eni.enicalendar.converter;

import javax.annotation.PostConstruct;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;

@ManagedBean(name = "moduleIndependantServiceConverter", eager = true)
@ApplicationScoped
public class ModuleIndependantServiceConverter {

	@ManagedProperty(value = "#{moduleIndependantsService}")
	private ModuleIndependantsServiceInterface moduleIndependantsService;

	@PostConstruct
	public void init() {

	}

	public ModuleIndependant findModuleIndependantById(Integer id) {
		return moduleIndependantsService.findById(id);
	}

	public ModuleIndependantsServiceInterface getModuleIndependantsService() {
		return moduleIndependantsService;
	}

	public void setModuleIndependantsService(ModuleIndependantsServiceInterface moduleIndependantsService) {
		this.moduleIndependantsService = moduleIndependantsService;
	}

}
