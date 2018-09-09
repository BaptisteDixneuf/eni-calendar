package fr.eni.enicalendar.converter;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.Calendrier;

@FacesConverter(value = "calendrierConverter")
public class CalendrierConverter implements Converter {

	private static final Logger LOGGER = LoggerFactory.getLogger(CalendrierConverter.class);

	public Object getAsObject(FacesContext fc, UIComponent uic, String value) {
		LOGGER.info("calendrierConverter - getAsObject");
		if (value != null && value.trim().length() > 0) {
			try {
				CalendrierServiceConverter service = (CalendrierServiceConverter) fc.getExternalContext()
						.getApplicationMap().get("calendrierServiceConverter");
				return service.findById(Integer.valueOf(value));
			} catch (NumberFormatException e) {
				throw new ConverterException(
						new FacesMessage(FacesMessage.SEVERITY_ERROR, "Conversion Error", "Not a valid calendrier."));
			}
		} else {
			return null;
		}
	}

	public String getAsString(FacesContext fc, UIComponent uic, Object object) {
		LOGGER.info("calendrierConverter - getAsString");
		if (object != null) {
			return String.valueOf(((Calendrier) object).getId());
		} else {
			return null;
		}
	}

}
