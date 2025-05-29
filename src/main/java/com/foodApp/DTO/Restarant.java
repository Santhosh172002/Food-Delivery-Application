package com.foodApp.DTO;

public class Restarant {

	   private int rId;
	   private String rName;
	   private String Imagepath;
	   private boolean isActive;
	   private float rating;
	   private String raddress;
	   
	   
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getImagepath() {
		return Imagepath;
	}
	public void setImagepath(String imagepath) {
		Imagepath = imagepath;
	}
	public boolean getIsActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public String getRaddress() {
		return raddress;
	}
	public void setRaddress(String raddress) {
		this.raddress = raddress;
	}
	public Restarant(int rId, String rName, String imagepath, boolean isActive, float rating, String raddress) {
		super();
		this.rId = rId;
		this.rName = rName;
		Imagepath = imagepath;
		this.isActive = isActive;
		this.rating = rating;
		this.raddress = raddress;
	}
	public Restarant(String rName, String imagepath, boolean isActive, float rating, String raddress) {
		super();
		this.rName = rName;
		Imagepath = imagepath;
		this.isActive = isActive;
		this.rating = rating;
		this.raddress = raddress;
	}
	public Restarant(int rId) {
		super();
		this.rId = rId;
	}
	public Restarant() {
		super();
	}
	@Override
	public String toString() {
		return "Restarant [rId=" + rId + ", rName=" + rName + ", Imagepath=" + Imagepath + ", isActive=" + isActive
				+ ", rating=" + rating + ", raddress=" + raddress + "]";
	}
	   
	
	
}
