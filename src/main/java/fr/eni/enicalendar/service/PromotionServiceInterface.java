package fr.eni.enicalendar.service;

import java.util.List;

import fr.eni.enicalendar.persistence.erp.entities.Promotion;

public interface PromotionServiceInterface {

	List<Promotion> findAllPromotion();
}
