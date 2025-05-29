package com.foodApp.DTO;

public class Customer {
	private int cId;
	private String cName;
	private String cEmail;
	private long cNumber;
	private String cPassword;
	public int getcId() {
		return cId;
	}
	
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcEmail() {
		return cEmail;
	}
	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	public long getcNumber() {
		return cNumber;
	}
	public void setcNumber(long cNumber) {
		this.cNumber = cNumber;
	}
	public String getcPassword() {
		return cPassword;
	}
	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}

	public Customer(String cName, String cEmail, long cNumber, String cPassword) {
		super();
		this.cName = cName;
		this.cEmail = cEmail;
		this.cNumber = cNumber;
		this.cPassword = cPassword;
	}
	

	public Customer(int cId, String cName, String cEmail, long cNumber, String cPassword) {
		super();
		this.cId = cId;
		this.cName = cName;
		this.cEmail = cEmail;
		this.cNumber = cNumber;
		this.cPassword = cPassword;
	}

	public Customer() {
		super();
	}

	public Customer(String cEmail) {
		super();
		this.cEmail = cEmail;
	}

	@Override
	public String toString() {
		return cId + " " + cName + " " + cEmail + " " + cNumber
				+ " " + cPassword ;
	}

	
}
