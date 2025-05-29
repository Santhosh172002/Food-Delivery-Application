package com.foodApp.DAOImpliment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import com.foodApp.DTO.CartItems;

public class Main {
	public static void main(String[] args) {
		String url = "jdbc:mysql:localhost:3306/food_application";
		String id = "root";
		String pwd = "Santhosh";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DriverManager.getConnection(url, id, pwd);
			System.out.println("Connected");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
