package com.fengshuisystem.demo.service.impl;
import com.fengshuisystem.demo.dto.AnimalCategoryDTO;
import com.fengshuisystem.demo.dto.AnimalImageDTO;
import com.fengshuisystem.demo.dto.ColorDTO;
import com.fengshuisystem.demo.dto.PageResponse;
import com.fengshuisystem.demo.entity.AnimalCategory;
import com.fengshuisystem.demo.entity.AnimalImage;
import com.fengshuisystem.demo.entity.Color;
import com.fengshuisystem.demo.entity.Destiny;
import com.fengshuisystem.demo.entity.enums.Status;
import com.fengshuisystem.demo.exception.AppException;
import com.fengshuisystem.demo.exception.ErrorCode;
import com.fengshuisystem.demo.mapper.AnimalMapper;
import com.fengshuisystem.demo.repository.AnimalRepository;
import com.fengshuisystem.demo.repository.ColorRepository;
import com.fengshuisystem.demo.repository.DestinyRepository;
import com.fengshuisystem.demo.service.AnimalService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.util.*;


@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class AnimalServiceImpl implements AnimalService {
    AnimalRepository animalRepository;
    AnimalMapper animalMapper;
    ColorRepository colorRepository;
    DestinyRepository destinyRepository;
    @Override
    @Transactional
    @PreAuthorize("hasRole('ADMIN')")
    public AnimalCategoryDTO createAnimal(AnimalCategoryDTO request) {
        var context = SecurityContextHolder.getContext();
        String name = context.getAuthentication().getName();
        if(animalRepository.existsByAnimalCategoryName(request.getAnimalCategoryName())) throw new AppException(ErrorCode.ANIMAL_EXISTED);
        Set<Color> colors = new HashSet<>();
        if (request.getColors() != null) {
            for (ColorDTO colorDTO : request.getColors()) {
                Color color = colorRepository.findById(colorDTO.getId())
                        .orElseThrow(() -> new AppException(ErrorCode.COLOR_NOT_EXISTED));
                colors.add(color);
            }
        }

        AnimalCategory animalCategory = animalMapper.toEntity(request);
        animalCategory.setStatus(Status.ACTIVE);
        animalCategory.setUpdatedDate(Instant.now());
        animalCategory.setCreatedDate(Instant.now());
        animalCategory.setColors(colors);
        animalCategory.setCreatedBy(name);
        animalCategory.setUpdatedBy(name);
        for (AnimalImage animalImage : animalCategory.getAnimalImages()) {
            animalImage.setAnimalCategory(animalCategory);
        }
        return animalMapper.toDto(animalRepository.save(animalCategory));
    }
    @Override
    @PreAuthorize("hasRole('ADMIN')")
   public PageResponse<AnimalCategoryDTO> getAnimalsBySearch(String search, int page, int size) {
        Status status = Status.ACTIVE;
        Sort sort = Sort.by("createdDate").descending();
        Pageable pageable = PageRequest.of(page - 1, size, sort);
      var pageData = animalRepository.findAllByAnimalCategoryNameContainingOriginContaining(search, status,pageable);
      if(pageData.isEmpty()) {
          throw new AppException(ErrorCode.ANIMAL_NOT_EXISTED);
      }

        return PageResponse.<AnimalCategoryDTO>builder()
                .currentPage(page)
                .pageSize(pageData.getSize())
                .totalPages(pageData.getTotalPages())
                .totalElements(pageData.getTotalElements())
                .data(pageData.getContent().stream().map(animalMapper::toDto).toList())
                .build();
   }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public PageResponse<AnimalCategoryDTO> getAnimals(int page, int size) {
        Status status = Status.ACTIVE;
        Sort sort = Sort.by("createdDate").descending();
        Pageable pageable = PageRequest.of(page - 1, size, sort);
        var pageData = animalRepository.findAllByStatus(status, pageable);
        if(pageData.isEmpty()) {
            throw new AppException(ErrorCode.ANIMAL_NOT_EXISTED);
        }
        return PageResponse.<AnimalCategoryDTO>builder()
                .currentPage(page)
                .pageSize(pageData.getSize())
                .totalPages(pageData.getTotalPages())
                .totalElements(pageData.getTotalElements())
                .data(pageData.getContent().stream().map(animalMapper::toDto).toList())
                .build();
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public void deleteAnimal(Integer id) {
        var animalCategory = animalRepository.findById(id).orElseThrow(() -> new AppException(ErrorCode.ANIMAL_NOT_EXISTED));
        animalCategory.setStatus(Status.DELETED);
        animalRepository.save(animalCategory);
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    @Transactional
    public AnimalCategoryDTO updateAnimal(Integer id, AnimalCategoryDTO request) {
        Status status = Status.DELETED;
        var context = SecurityContextHolder.getContext();
        String name = context.getAuthentication().getName();
        AnimalCategory animalCategory = animalRepository.findById(id).orElseThrow(() -> new AppException(ErrorCode.ANIMAL_NOT_EXISTED));
        animalMapper.update(request, animalCategory);
        Set<Color> colors = new HashSet<>();
        if (request.getColors() != null) {
            for (ColorDTO colorDTO : request.getColors()) {
                Color color = colorRepository.findById(colorDTO.getId())
                        .orElseThrow(() -> new AppException(ErrorCode.COLOR_NOT_EXISTED));
                colors.add(color);
            }
        }
        for (AnimalImage animalImage : animalCategory.getAnimalImages()) {
            animalImage.setAnimalCategory(animalCategory);
        }
        animalCategory.setUpdatedBy(name);
        animalCategory.setColors(colors);
        animalCategory.setUpdatedDate(Instant.now());
        return animalMapper.toDto(animalRepository.saveAndFlush(animalCategory));
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public AnimalCategoryDTO getAnimalById(Integer id) {
        AnimalCategory animalCategory = animalRepository.findById(id).orElseThrow(() -> new AppException(ErrorCode.ANIMAL_NOT_EXISTED));
        return animalMapper.toDto(animalCategory);
    }


}
