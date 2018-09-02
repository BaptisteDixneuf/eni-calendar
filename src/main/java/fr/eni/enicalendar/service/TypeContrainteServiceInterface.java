package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.app.entities.TypeContrainte;

public interface TypeContrainteServiceInterface {

	TypeContrainte findByLibelle(String libelle);

	TypeContrainte findById(Integer id);

}
