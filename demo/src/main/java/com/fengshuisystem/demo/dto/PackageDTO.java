package com.fengshuisystem.demo.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;
import java.math.BigDecimal;
import java.time.Instant;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PackageDTO {
    private Integer id;
    private String packageName;
    private BigDecimal price;
    private String description;
    private String status;
    private Instant createdDate = Instant.now();
    private String createdBy;
    private Instant updatedDate = Instant.now();
    private String updatedBy;


}
