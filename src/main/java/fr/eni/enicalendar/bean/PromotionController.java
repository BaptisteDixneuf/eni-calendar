package fr.eni.enicalendar.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import fr.eni.enicalendar.persistence.erp.entities.Promotion;
import fr.eni.enicalendar.service.PromotionServiceInterface;


@ManagedBean(name="promotionController")
@ViewScoped
public class PromotionController implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Promotion> promotions; 

	@ManagedProperty(value = "#{promotionService}")
    private PromotionServiceInterface promotionService;
	
	@PostConstruct
    public void setup()  {    	
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
