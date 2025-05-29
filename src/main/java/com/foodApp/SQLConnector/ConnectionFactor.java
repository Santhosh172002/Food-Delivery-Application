package com.foodApp.SQLConnector;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactor {
	private static final String USER = "jdbc:mysql://localhost:3306/food_application";
	private static final String UN = "root";
	private static final String PWD = "Santhosh";
	
	static Connection con;
	
	public static Connection connect() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(USER,UN,PWD);
		return con;
	}
	

}
