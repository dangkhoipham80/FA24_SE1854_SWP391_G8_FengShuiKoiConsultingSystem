package com.fengshuisystem.demo.repository;

import com.fengshuisystem.demo.dto.AnimalCategoryDTO;
import com.fengshuisystem.demo.entity.AnimalCategory;
import com.fengshuisystem.demo.entity.enums.Status;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface AnimalRepository extends JpaRepository<AnimalCategory, Integer> {
    boolean existsByAnimalCategoryName(String name);
    Page<AnimalCategory> findAllByStatus(Status status, Pageable pageable);
    @Query("SELECT ac FROM AnimalCategory ac " +
            "WHERE :#{#dto.animalCategoryName} = 'ACTIVE' " +
            "OR ac.animalCategoryName LIKE %:#{#dto.animalCategoryName}% " +
            "AND  ac.origin LIKE %:#{#dto.origin}%")
    Page<AnimalCategory> findAllByAnimalCategoryNameContainingOriginContaining(AnimalCategoryDTO dto, Pageable pageable);


}
