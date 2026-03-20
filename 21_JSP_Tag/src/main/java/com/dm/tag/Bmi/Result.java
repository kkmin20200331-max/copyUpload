package com.dm.tag.Bmi;



public class Result {

    private String name;
    private double height;
    private double weight;
    private String pic;

    private String result;
    private String color;
    private String bmi_r;
    public Result(){

    }

    public Result(String name, double height, double weight, String pic, String bmi_r, String result, String color) {
        this.name = name;
        this.height = height;
        this.weight = weight;
        this.pic = pic;
        this.bmi_r = bmi_r;
        this.result = result;
        this.color = color;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getbmi_r() {
        return bmi_r;
    }

    public void setbmi_r(String bmi_r) {
        this.bmi_r = bmi_r;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
