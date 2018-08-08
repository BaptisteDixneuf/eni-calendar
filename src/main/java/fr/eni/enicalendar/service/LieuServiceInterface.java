package fr.eni.enicalendar.service;

import fr.eni.enicalendar.persistence.erp.entities.Lieu;

import java.util.List;

public interface LieuServiceInterface {

	List<Lieu> findAllLieux();

	Lieu findByCodeLieu(Integer id);

}
