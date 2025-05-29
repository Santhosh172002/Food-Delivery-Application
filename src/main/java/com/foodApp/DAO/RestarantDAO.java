package com.foodApp.DAO;
import java.util.ArrayList;
import com.foodApp.DTO.Restarant;

public interface RestarantDAO {
	
		ArrayList<Restarant> getRestarants();
	
		Restarant getRestarant(int rId);
	
		boolean updateRestarant(Restarant r);
	
		boolean addRestarant();
	
		boolean removeRestarant(int rId);

}
