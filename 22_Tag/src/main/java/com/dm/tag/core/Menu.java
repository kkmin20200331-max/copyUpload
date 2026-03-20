package com.dm.tag.core;


public class Menu {
    private String name;
    private int price;


    public Menu(String name, int pirce) {
        this.name = name;
        this.price = pirce;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int pirce) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
