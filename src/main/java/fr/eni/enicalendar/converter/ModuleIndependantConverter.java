package fr.eni.enicalendar.converter;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;

@FacesConverter(value = "moduleIndependantConverter")
public class ModuleIndependantConverter implements Converter {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleIndependantConverter.class);

	public Object getAsObject(FacesContext fc, UIComponent uic, String value) {
		LOGGER.info("ModuleIndependantConverter - getAsObject");
		if (value != null && value.trim().length() > 0) {
			try {
				ModuleIndependantServiceConverter service = (ModuleIndependantServiceConverter) fc.getExternalContext()
						.getApplicationMap().get("moduleIndependantServiceConverter");
				return service.findModuleIndependantById(Integer.valueOf(value));
			} catch (NumberFormatException e) {
				throw new ConverterException(
						new FacesMessage(FacesMessage.SEVERITY_ERROR, "Conversion Error", "Not a valid stagiaire."));
			}
		} else {
			return null;
		}
	}

	public String getAsString(FacesContext fc, UIComponent uic, Object object) {
		LOGGER.info("ModuleIndependantConverter - getAsString");
		if (object != null) {
			return String.valueOf(((ModuleIndependant) object).getId());
		} else {
			return null;
		}
	}

}
