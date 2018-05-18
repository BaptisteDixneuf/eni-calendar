package fr.eni.enicalendar.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.eni.enicalendar.persistence.erp.entities.Promotion;
import fr.eni.enicalendar.persistence.erp.repositories.PromotionRepository;
import fr.eni.enicalendar.service.PromotionServiceInterface;

@Service
public class PromotionService implements PromotionServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(PromotionService.class);

	@Autowired
	private PromotionRepository promotionRepository;

	@Override
	public List<Promotion> findAllPromotion() {
		List<Promotion> retour = null;
		LOGGER.info("findAllPromotion");
		retour = promotionRepository.findAll();
		return retour;
	}

}
