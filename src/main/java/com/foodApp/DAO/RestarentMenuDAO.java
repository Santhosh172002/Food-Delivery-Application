package com.foodApp.DAO;

import java.util.ArrayList;

import com.foodApp.DTO.RestarentMenu;

public interface RestarentMenuDAO {
	
	ArrayList<RestarentMenu> getRestarentMenu(int rId);
	
	RestarentMenu getMenuItem(int mId);
	
	boolean updateRestarentMenu(RestarentMenu rm);
	
	boolean removeRestarentMenu(int iId);
	
	boolean addRestarentMenu(int rId, String itemName, String itemPath, String itemPrice, String idsc);
	
}
