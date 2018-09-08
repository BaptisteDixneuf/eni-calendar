package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.erp.entities.Entreprise;
import fr.eni.enicalendar.persistence.erp.repositories.EntrepriseRepository;
import fr.eni.enicalendar.service.EntrepriseServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class EntrepriseService implements EntrepriseServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(EntrepriseService.class);

    @Autowired
    private EntrepriseRepository entrepriseRepository;

    @Override
    public Entreprise findByCodeEntreprise (Integer id) {
        return entrepriseRepository.findByCodeEntreprise(id);
    }

}
