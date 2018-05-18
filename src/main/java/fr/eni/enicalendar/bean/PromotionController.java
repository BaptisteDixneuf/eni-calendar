package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.erp.entities.Promotion;
import fr.eni.enicalendar.service.PromotionServiceInterface;

@ManagedBean(name = "promotionController")
@ViewScoped
public class PromotionController implements Serializable {

	/**
	 * Serial UID
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

	private List<Promotion> promotions;

	@ManagedProperty(value = "#{promotionService}")
	private PromotionServiceInterface promotionService;

	@PostConstruct
	public void setup() {
		LOGGER.info("PromotionController setup");
		promotions = promotionService.findAllPromotion();
	}

	public List<Promotion> getPromotions() {
		return promotions;
	}

	public void setPromotions(List<Promotion> promotions) {
		this.promotions = promotions;
	}

	public PromotionServiceInterface getPromotionService() {
		return promotionService;
	}

	public void setPromotionService(PromotionServiceInterface promotionService) {
		this.promotionService = promotionService;
	}

}
