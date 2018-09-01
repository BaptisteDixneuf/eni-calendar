package fr.eni.enicalendar.converter;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import fr.eni.enicalendar.persistence.erp.entities.Module;

@FacesConverter(value = "moduleConverter")
public class ModuleConverter implements Converter {

	private static final Logger LOGGER = LoggerFactory.getLogger(ModuleConverter.class);

	public Object getAsObject(FacesContext fc, UIComponent uic, String value) {
		LOGGER.info("moduleConverter - getAsObject");
		if (value != null && value.trim().length() > 0) {
			try {
				ModuleServiceConverter service = (ModuleServiceConverter) fc.getExternalContext().getApplicationMap()
						.get("moduleServiceConverter");
				return service.findModuleById(Integer.valueOf(value));
			} catch (NumberFormatException e) {
				throw new ConverterException(
						new FacesMessage(FacesMessage.SEVERITY_ERROR, "Conversion Error", "Not a valid stagiaire."));
			}
		} else {
			return null;
		}
	}

	public String getAsString(FacesContext fc, UIComponent uic, Object object) {
		LOGGER.info("moduleConverter - getAsString");
		if (object != null) {
			return String.valueOf(((Module) object).getId());
		} else {
			return null;
		}
	}

}
