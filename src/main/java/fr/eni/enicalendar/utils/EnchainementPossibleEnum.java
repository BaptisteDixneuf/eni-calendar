package fr.eni.enicalendar.utils;

public enum EnchainementPossibleEnum {

	NON_REQUIS("NON_REQUIS"), OPTIONNEL("OPTIONNEL"), OBLIGATOIRE("OBLIGATOIRE");

	private final String type;

	/**
	 * @param text
	 */
	EnchainementPossibleEnum(final String type) {
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
