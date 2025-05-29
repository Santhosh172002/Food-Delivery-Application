package com.foodApp.DTO;

public class CartItems {
	private int mId;
	private int rId;
	private String itemName;
	private String itemImage;
	private int itemPrice;
	private int quantity;
	private int Total;
	
	
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal() {
		return Total;
	}
	public void setTotal(int total) {
		Total = total;
	}
	
	
	public CartItems(int mId, int rId, String itemName, String itemImage, int itemPrice, int quantity, int total) {
		super();
		this.mId = mId;
		this.rId = rId;
		this.itemName = itemName;
		this.itemImage = itemImage;
		this.itemPrice = itemPrice;
		this.quantity = quantity;
		Total = total;
	}
	public CartItems() {
		super();
	}
	public CartItems(int quantity) {
		super();
		this.quantity = quantity;
	}
	
	
	@Override
	public String toString() {
		return "CartItems [mId=" + mId + ", rId=" + rId + ", itemName=" + itemName + ", itemImage=" + itemImage
				+ ", itemPrice=" + itemPrice + ", quantity=" + quantity + ", Total=" + Total + "]";
	}
}
