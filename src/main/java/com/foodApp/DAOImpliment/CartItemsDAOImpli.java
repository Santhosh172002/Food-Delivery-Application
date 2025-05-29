package com.foodApp.DAOImpliment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.foodApp.DAO.CartItemDAO;
import com.foodApp.DTO.CartItems;
import com.foodApp.SQLConnector.ConnectionFactor;

public class CartItemsDAOImpli  implements CartItemDAO{
	private Connection con;
	private Statement stmt;
	private ResultSet res;
	private PreparedStatement pstmt;
    private static final String  SELECT_QUERY = "SELECT * from Orders";
    private static final String  ADD_QUERY = "INSERT into Orders Values (?,?,?,?,?,?,itemPrice * quantity)";  
    private static final String  Remove_item = "Delete from Orders where mId = ?";
    private static final String  GET_ITEMBYID = "SELECT * FROM Orders where mId = ?";
    private static final String  GET_ALL = "SELECT * FROM Orders";
    private static final String  CLEAR_CART = "TRUNCATE TABLE orders";
    boolean status;
    
	@Override
	public ArrayList<CartItems> getCartItems() {
		ArrayList<CartItems> al = new ArrayList<CartItems>();
		try {
			con = ConnectionFactor.connect();
			stmt = con.createStatement();
			res = stmt.executeQuery(SELECT_QUERY);
			
			while(res.next())
			{
				CartItems ci = new CartItems(res.getInt(1),res.getInt(2),res.getString(3),res.getString(4),res.getInt(5),res.getInt(6),res.getInt(7));
				al.add(ci);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return al;
	}

	@Override
	public CartItems getCartItems(int mId) {
		CartItems ci=null;
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(GET_ITEMBYID);
			pstmt.setInt(1, mId);
			res = pstmt.executeQuery();
			
			res.next();
			ci = new CartItems(res.getInt(1),res.getInt(2),res.getString(3),res.getString(4),res.getInt(5),res.getInt(6),res.getInt(7));
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return ci;
	}

	@Override
	public boolean updateCartItems(CartItems ci) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addCartItems(int mId,int rId,String itemName,String itemImage,int itemPrice,int quantity) {
		 status = false;
		
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(ADD_QUERY);
			pstmt.setInt(1, mId);
			pstmt.setInt(2, rId);
			pstmt.setString(3, itemName);
			pstmt.setString(4, itemImage);
			pstmt.setInt(5, itemPrice);
			pstmt.setInt(6, quantity);
			int res = pstmt.executeUpdate();
			if(res != 0)
			{
				status = true;
			}
			
		} catch (Exception e) {
			status = false;
		}
		return status;
	}

	
	
	@Override
	public boolean remove(int mId) {
		status = false;
		try {
			con = ConnectionFactor.connect();
			pstmt = con.prepareStatement(Remove_item);
			pstmt.setInt(1, mId);
			int res = pstmt.executeUpdate();
			if(res != 0)
			{
				status = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public int getTotalBill() {
		int total = 0;
		try {
			con = ConnectionFactor.connect();
			stmt = con.createStatement();
			res = stmt.executeQuery(GET_ALL);
			while(res.next()) {
				total += res.getInt("total");
			}
			
		} catch (Exception e) {
			total = 0;
		}
		return total;
	}

	@Override
	public int getTotalItems() {
		int items = 0;
		try {
			con = ConnectionFactor.connect();
			stmt = con.createStatement();
			res = stmt.executeQuery(GET_ALL);
			while(res.next()) {
				items++;
			}
		} catch (Exception e) {
			items = 0;
		}
		return items;
	}

	@Override
	public boolean clearCart() {
		boolean status = true;
		try {
			con = ConnectionFactor.connect();
			stmt = con.createStatement();
			int st = stmt.executeUpdate(CLEAR_CART);
			if(st != 0) {
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	
    
}
