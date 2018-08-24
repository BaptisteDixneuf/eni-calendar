package fr.eni.enicalendar.converter;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;

@FacesConverter(value = "stagiaireConverter")
public class StagiaireConverter implements Converter {

	public Object getAsObject(FacesContext fc, UIComponent uic, String value) {
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
		if (object != null) {
			return String.valueOf(((Stagiaire) object).getCodeStagiaire());
		} else {
			return null;
		}
	}
}
