package fr.eni.enicalendar.persistence.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.entities.Promotion;


public interface PromotionRepository extends JpaRepository<Promotion, String>{

	List<Promotion> findAll(); 
}
