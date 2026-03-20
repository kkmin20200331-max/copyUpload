package com.dm.bmi;



public class Result {

    private String name;
    private double height;
    private double weight;
    private String pic;
    private double BMI;
    private String result;
    private String color;

    public Result(){

    }

    public Result(String name, double height, double weight, String pic, double BMI, String result, String color) {
        this.name = name;
        this.height = height;
        this.weight = weight;
        this.pic = pic;
        this.BMI = BMI;
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

    public double getBMI() {
        return BMI;
    }

    public void setBMI(double BMI) {
        this.BMI = BMI;
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
