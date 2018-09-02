package fr.eni.enicalendar.service.impl;

import java.io.Serializable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.app.entities.TypeContrainte;
import fr.eni.enicalendar.persistence.app.repositories.TypeContrainteRepository;
import fr.eni.enicalendar.service.TypeContrainteServiceInterface;

@Service
public class TypeContrainteService implements TypeContrainteServiceInterface, Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 4669403011752136207L;

	private static final Logger LOGGER = LoggerFactory.getLogger(TypeContrainteService.class);

	@Autowired
	private TypeContrainteRepository typeContrainteRepository;

	@Override
	public TypeContrainte findByLibelle(String libelle) {
		return typeContrainteRepository.findByLibelle(libelle);
	}

	@Override
	public TypeContrainte findById(Integer id) {
		return typeContrainteRepository.findById(id);
	}

}
