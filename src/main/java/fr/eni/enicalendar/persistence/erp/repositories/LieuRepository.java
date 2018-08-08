package fr.eni.enicalendar.persistence.erp.repositories;

import fr.eni.enicalendar.persistence.erp.entities.Lieu;
import fr.eni.enicalendar.persistence.erp.entities.Stagiaire;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LieuRepository extends JpaRepository<Lieu, Integer> {


	Lieu findByCodeLieu(Integer id);

}