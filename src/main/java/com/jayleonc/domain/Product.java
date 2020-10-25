package com.jayleonc.domain;

import lombok.Data;

import java.io.Serializable;

@Data

public class Product implements Serializable {
    private Integer pid;

    private String pimage;
}
