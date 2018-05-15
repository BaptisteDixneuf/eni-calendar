package fr.eni.enicalendar.bean;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import fr.eni.enicalendar.service.CoursServiceInterface;

@ManagedBean(name="coursController")
@ViewScoped
public class CoursController implements Serializable {

	 /**
	  * Serial UID
	  */
	private static final long serialVersionUID = 1L;
	
	private String test;
	
	@ManagedProperty(value = "#{coursService}")
    private CoursServiceInterface coursService;  
	
	@PostConstruct
    public void setup()  {
		test = coursService.concatenationLibelle();
	}

	/**
	 * @return the test
	 */
	public String getTest() {
		return test;
	}

	/**
	 * @param test the test to set
	 */
	public void setTest(String test) {
		this.test = test;
	}

	/**
	 * @return the coursService
	 */
	public CoursServiceInterface getCoursService() {
		return coursService;
	}

	/**
	 * @param coursService the coursService to set
	 */
	public void setCoursService(CoursServiceInterface coursService) {
		this.coursService = coursService;
	}	
	
	
	
	
}
