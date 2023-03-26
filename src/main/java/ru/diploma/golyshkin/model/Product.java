package ru.diploma.golyshkin.model;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

@Getter
@Setter
@Accessors(chain = true)
public class Product {
    private Long id;
    private String nickName;
    private String name;
    private Double price;
    private Double ranking;
    private Integer rankingCount;
    private String description;
    private LocalDateTime registerDate;
    private Boolean isEnable;
    private String category;
    private String photo;
}
