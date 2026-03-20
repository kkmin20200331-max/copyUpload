package com.dm.test;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Result {
    private String name;
    private int num;
    private int cost;
    private double perCost;
}
