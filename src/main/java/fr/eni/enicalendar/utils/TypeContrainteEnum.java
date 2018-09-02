package fr.eni.enicalendar.utils;

public enum TypeContrainteEnum {

	SEMAINE_AFFILEE_ENTREPRISE("SEMAINE_AFFILEE_ENTREPRISE"), SEMAINE_AFFILEE_FORMATION(
			"SEMAINE_AFFILEE_FORMATION"), FORTE_ACTIVITE_ENTREPRISE(
					"FORTE_ACTIVITE_ENTREPRISE"), FAIBLE_ACTIVITE_ENTREPRISE(
							"FAIBLE_ACTIVITE_ENTREPRISE"), NON_DISPONIBILITE("NON_DISPONIBILITE");

	private final String text;

	/**
	 * @param text
	 */
	TypeContrainteEnum(final String text) {
		this.text = text;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Enum#toString()
	 */
	@Override
	public String toString() {
		return text;
	}

}
