package com.fengshuisystem.demo.repository;

import com.fengshuisystem.demo.dto.AnimalCategoryDTO;
import com.fengshuisystem.demo.entity.AnimalCategory;
import com.fengshuisystem.demo.entity.enums.Status;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface AnimalRepository extends JpaRepository<AnimalCategory, Integer> {
    boolean existsByAnimalCategoryName(String name);
    Page<AnimalCategory> findAllByStatus(Status status, Pageable pageable);
    @Query("SELECT ac FROM AnimalCategory ac " +
            "WHERE ac.status = :status " +
            "AND (:name IS NULL OR TRIM(:name) = '' OR ac.animalCategoryName LIKE %:name%)")
    Page<AnimalCategory> findAllByAnimalCategoryNameContainingOriginContaining(String name, Status status, Pageable pageable);



}
