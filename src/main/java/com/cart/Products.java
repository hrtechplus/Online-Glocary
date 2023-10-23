package com.cart;

public class Products {
	private int  id;
	private String name;
	private String catagory;
	private int price;
	private String active;
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
	public String getCatagory() {
		return catagory;
	}
	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public Products(int id, String name, String catagory, int price, String active) {
		super();
		this.id = id;
		this.name = name;
		this.catagory = catagory;
		this.price = price;
		this.active = active;
	}
	
}
