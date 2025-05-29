package com.foodApp.DTO;

public class RestarentMenu {
	private int mid;
	private int rid;
	private String itemName;
	private String imagePath;
	private int itemPrice;
	private String idsc;
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getIdsc() {
		return idsc;
	}
	public void setIdsc(String idsc) {
		this.idsc = idsc;
	}
	public RestarentMenu(int mid, int rid, String itemName, String imagePath, int itemPrice, String idsc) {
		super();
		this.mid = mid;
		this.rid = rid;
		this.itemName = itemName;
		this.imagePath = imagePath;
		this.itemPrice = itemPrice;
		this.idsc = idsc;
	}
	public RestarentMenu(int rid, String itemName, String imagePath, int itemPrice, String idsc) {
		super();
		this.rid = rid;
		this.itemName = itemName;
		this.imagePath = imagePath;
		this.itemPrice = itemPrice;
		this.idsc = idsc;
	}
	public RestarentMenu() {
		super();
	}
	public RestarentMenu(int rid) {
		super();
		this.rid = rid;
	}
	@Override
	public String toString() {
		return "RestarentMenu [mid=" + mid + ", rid=" + rid + ", itemName=" + itemName + ", imagePath=" + imagePath
				+ ", itemPrice=" + itemPrice + ", idsc=" + idsc + "]";
	}
	
	

}
