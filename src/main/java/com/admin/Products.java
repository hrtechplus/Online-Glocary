package com.admin;

public class Products {
	private String id;
    private String name;
    private String catagory;
    private String price;
    private String active;

    public Products(String id, String name, String catagory, String price, String active) {
        this.id = id;
        this.name = name;
        this.catagory = catagory;
        this.price = price;
        this.active = active;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCatagory() {
        return catagory;
    }

    public void setCatagory(String catagory) {
        this.catagory = catagory;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }
}
