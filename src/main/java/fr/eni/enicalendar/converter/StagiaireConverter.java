package fr.eni.enicalendar.converter;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;

@FacesConverter(value = "stagiaireConverter")
public class StagiaireConverter implements Converter {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleIndependantConverter.class);

	public Object getAsObject(FacesContext fc, UIComponent uic, String value) {
		LOGGER.info("StagiaireConverter - getAsObject");
		if (value != null && value.trim().length() > 0) {
			try {
				StagiaireServiceConverter service = (StagiaireServiceConverter) fc.getExternalContext()
						.getApplicationMap().get("stagiaireServiceConverter");
				return service.getStagiairesByCode(Integer.parseInt(value));
			} catch (NumberFormatException e) {
				throw new ConverterException(
						new FacesMessage(FacesMessage.SEVERITY_ERROR, "Conversion Error", "Not a valid stagiaire."));
			}
		} else {
			return null;
		}
	}

	public String getAsString(FacesContext fc, UIComponent uic, Object object) {
		LOGGER.info("StagiaireConverter - getAsString");
		if (object != null) {
			return String.valueOf(((Stagiaire) object).getCodeStagiaire());
		} else {
			return null;
		}
	}
}
