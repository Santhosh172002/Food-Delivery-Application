package com.foodApp.DAOImpliment;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.foodApp.DAO.RestarantDAO;
import com.foodApp.DTO.Restarant;
import com.foodApp.SQLConnector.ConnectionFactor;

public class RestarantDAOImpli implements RestarantDAO{
	
	private Connection con;
	private Statement stmt;
	private ResultSet res;
	private ArrayList<Restarant> al;
	private String SELECT_QUERY = "Select * from Restarent";

	@Override
	public ArrayList<Restarant> getRestarants() {
		 al = new ArrayList<Restarant>();
		try {
			con = ConnectionFactor.connect();
			stmt = con.createStatement();
			res = stmt.executeQuery(SELECT_QUERY);
			while (res.next()) {
				Restarant c = new Restarant(res.getInt(1), res.getString(2), res.getString(3), res.getBoolean(4),res.getFloat(5),
						res.getString(6));
				al.add(c);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;		
	}

	@Override
	public Restarant getRestarant(int rId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateRestarant(Restarant r) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addRestarant() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeRestarant(int rId) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
