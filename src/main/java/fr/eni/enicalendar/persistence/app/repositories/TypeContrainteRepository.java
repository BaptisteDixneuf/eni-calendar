package fr.eni.enicalendar.persistence.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.app.entities.TypeContrainte;

public interface TypeContrainteRepository extends JpaRepository<TypeContrainte, Integer> {

	TypeContrainte findByLibelle(String libelle);

	TypeContrainte findById(Integer id);

}