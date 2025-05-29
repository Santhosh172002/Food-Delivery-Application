package com.foodApp.DAOImpliment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.foodApp.DAO.RestarentMenuDAO;
import com.foodApp.DTO.RestarentMenu;
import com.foodApp.SQLConnector.ConnectionFactor;

public class RestarentMenuDAOImpli implements RestarentMenuDAO{
	private Connection con;
	private ResultSet res;
	private PreparedStatement pstmt;
	private static final String GET_QUERY = "SELECT * FROM restarent_menu WHERE rId=?";
	private static final String GET_ITEM = "SELECT * FROM restarent_menu WHERE mId=?";
	
	@Override
	public ArrayList<RestarentMenu> getRestarentMenu(int rId) {
		ArrayList<RestarentMenu> rm = new ArrayList<RestarentMenu>();
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(GET_QUERY);
			pstmt.setInt(1, rId);
			res = pstmt.executeQuery();
			while(res.next()) {
				RestarentMenu rml = new RestarentMenu(res.getInt("mId"), res.getInt("rId"), res.getString("itemName"), res.getString("imagePath"), res.getInt("itemPrice"),res.getString("idesc"));
				rm.add(rml);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rm;
	}
	
	

	@Override
	public boolean updateRestarentMenu(RestarentMenu rm) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeRestarentMenu(int iId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addRestarentMenu(int rId, String itemName, String itemPath, String itemPrice, String idesc) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public RestarentMenu getMenuItem(int mId) {
		RestarentMenu rm = null;
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(GET_ITEM);
			pstmt.setInt(1, mId);
			res = pstmt.executeQuery();
			res.next();
			rm = new RestarentMenu(res.getInt("mId"), res.getInt("rId"), res.getString("itemName"), res.getString("imagePath"), res.getInt("itemPrice"), res.getString("idesc"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rm;
	}
}
