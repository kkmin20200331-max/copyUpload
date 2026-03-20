package com.dm.tag.format;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Snacks {
    private String name;
    private int price;
    private Date date;
}
