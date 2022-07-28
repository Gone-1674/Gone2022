package com.xit.store.entity;

/**
 * ClassName:  commodity
 * Package:  com.xit.store.entity
 * Description:
 *
 * @Date: 2021/11/23   21:41
 * @Author: 86152
 */
public class commodity {
    private int id;
    private String name;
    private double price;
    private int count;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public commodity() {
    }

    public commodity(int id, String name, double price, int count) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.count = count;
    }
}
