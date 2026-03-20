package com.dm.unit;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {
   private double user_num;
   private String unit_r;
   private double result;
   private String result_unit;
   private String selectedKey;
}
