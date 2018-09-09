package fr.eni.enicalendar.utils;

public enum EtatCalendrierEnum {

	ACTIF("Actif"), INACTIF("Inactif"), PREVISIONNEL("Prévisionnel"), INSCRIT("Inscrit");

	private final String type;

	/**
	 * @param text
	 */
	EtatCalendrierEnum(final String type) {
		this.type = type;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Enum#toString()
	 */
	@Override
	public String toString() {
		return type;
	}
}
