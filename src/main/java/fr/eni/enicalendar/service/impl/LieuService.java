package fr.eni.enicalendar.service.impl;

import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.repositories.LieuRepository;
import fr.eni.enicalendar.service.LieuServiceInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LieuService implements LieuServiceInterface {

	private static final Logger LOGGER = LoggerFactory.getLogger(LieuService.class);

	@Autowired
	private LieuRepository lieuRepository;

	@Override
	public List<Lieu> findAllLieux() {
		return lieuRepository.findAll();
	}

	@Override
	public Lieu findByCodeLieu (Integer id) {
		return lieuRepository.findByCodeLieu(id);
	}

	@Override
	public Lieu findByLibelle(String libelle)  {
		return lieuRepository.findByLibelle(libelle);
	}

}
