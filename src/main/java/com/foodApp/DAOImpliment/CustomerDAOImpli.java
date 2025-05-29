package com.foodApp.DAOImpliment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.foodApp.DAO.CustomerDAO;
import com.foodApp.DTO.Customer;
import com.foodApp.SQLConnector.ConnectionFactor;

public class CustomerDAOImpli implements CustomerDAO {
	private static final String SELECT_QUERY = "SELECT * from Customers";
	private static final String SELECT_QUERY_WITH_EMAIL = "SELECT * FROM Customers where cEmail=?";
	private static final String INSERT_QUERY = "Insert into `customers` (`cName`,`cEmail`,`cNumber`,`cPassword`) values (?,?,?,?)";
	private static Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet res;
	private int Status;
	ArrayList<Customer> al;

	@Override
	public List getCustomers() {
		try {
			con = ConnectionFactor.connect();
			stmt = con.createStatement();
			res = stmt.executeQuery(SELECT_QUERY);
			while (res.next()) {
				al = new ArrayList<Customer>();
				Customer c = new Customer(res.getInt(1), res.getString(2), res.getString(3), res.getLong(4),
						res.getString(5));
				al.add(c);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	@Override
	public Customer getCustomer(String cEmail) {
		Customer c = null;
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(SELECT_QUERY_WITH_EMAIL);
			pstmt.setString(1, cEmail);
			res = pstmt.executeQuery();
			if (res.next()) {
				c = new Customer(res.getInt("cId"), res.getString("cName") ,res.getString("cEmail"),  res.getLong("cNumber"), res.getString("cPassword"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
	}

	@Override
	public boolean updateCustomer(Customer c) {

		boolean result = false;
		String UPDATE_QUERY = "UPDATE customers SET cName=?, cEmail=?, cNumber=?, cPassword=? WHERE cEmail=?";

		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(UPDATE_QUERY);

			// Set the updated values for the customer
			pstmt.setString(1, c.getcName());
			pstmt.setString(2, c.getcEmail());
			pstmt.setLong(3, c.getcNumber());
			pstmt.setString(4, c.getcPassword());
			pstmt.setString(5, c.getcEmail()); 

			Status = pstmt.executeUpdate();

			if (Status != 0) {
				result = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public boolean addCustomer(String cName, String cEmail, long cNumber, String cPassword) {
		boolean results = false;
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(INSERT_QUERY);
			pstmt.setString(1, cName);
			pstmt.setString(2, cEmail);
			pstmt.setLong(3, cNumber);
			pstmt.setString(4, cPassword);
			Status = pstmt.executeUpdate();
			if (Status != 0) {
				results = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return results;
	}

	@Override
	public boolean removeCustomer(String cEmail) {

		return false;
	}

}
