package com.fengshuisystem.demo.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.Instant;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ColorDTO {
    Integer id;
    DestinyDTO destiny;
    String color;
    String status;
    Instant createdDate;
    String createdBy;
    Instant updatedDate;
    String updatedBy;
}