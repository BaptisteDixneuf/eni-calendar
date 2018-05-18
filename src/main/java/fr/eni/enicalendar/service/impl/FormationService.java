package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.Formation;
import fr.eni.enicalendar.persistence.erp.repositories.FormationRepository;
import fr.eni.enicalendar.service.FormationServiceInterface;

@Service
public class FormationService implements FormationServiceInterface {

	@Autowired
	private FormationRepository formationRepository;

	@Override
	public List<Formation> findAllFormations() {
		return formationRepository.findAll();
	}

}
