package fr.eni.enicalendar.persistence.erp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.eni.enicalendar.persistence.erp.entities.Promotion;

public interface PromotionRepository extends JpaRepository<Promotion, String> {

}
