package fr.eni.enicalendar.dto;

public enum ElementCalendrierType {
	CALENDRIER("CALENDRIER");

	private final String text;

	/**
	 * @param text
	 */
	ElementCalendrierType(final String text) {
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
