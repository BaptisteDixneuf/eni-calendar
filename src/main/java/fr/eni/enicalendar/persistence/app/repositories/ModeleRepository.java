package fr.eni.enicalendar.persistence.app.repositories;

import fr.eni.enicalendar.persistence.app.entities.ModeleCalendrier;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ModeleRepository extends JpaRepository<ModeleCalendrier, Integer> {


	ModeleCalendrier findByNomCalendrier(String libelle);

}