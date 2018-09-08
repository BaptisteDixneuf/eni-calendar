package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.erp.entities.StagiaireParEntreprise;
import fr.eni.enicalendar.persistence.erp.repositories.StagiaireEntrepriseRepository;
import fr.eni.enicalendar.service.StagiaireEntrepriseServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class StagiaireEntrepriseService implements StagiaireEntrepriseServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(StagiaireEntrepriseService.class);

    @Autowired
    private StagiaireEntrepriseRepository stagiaireRepository;

    @Override
    public StagiaireParEntreprise findByCodeStagiaire (Integer id) {
        return stagiaireRepository.findBycodeStagiaire(id);
    }

}
