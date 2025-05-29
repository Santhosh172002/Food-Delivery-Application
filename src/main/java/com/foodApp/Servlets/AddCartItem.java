package com.foodApp.Servlets;
import java.io.IOException;




import com.foodApp.DAOImpliment.CartItemsDAOImpli;
import com.foodApp.DAOImpliment.RestarentMenuDAOImpli;
import com.foodApp.DTO.RestarentMenu;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@jakarta.servlet.annotation.WebServlet("/AddCartItem")
public class AddCartItem extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mId = Integer.parseInt(req.getParameter("mId"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		
		RestarentMenuDAOImpli rdim = new RestarentMenuDAOImpli();
		RestarentMenu rm = rdim.getMenuItem(mId);
		
		CartItemsDAOImpli cid = new CartItemsDAOImpli();
		 	
		boolean status = cid.addCartItems(mId, rm.getRid(), rm.getItemName(), rm.getImagePath(), rm.getItemPrice(), quantity);	
		if(status) {
			req.getSession().setAttribute("iteminfo", rm);
			resp.sendRedirect("ItemAdded.jsp");
		}
		else {
			resp.sendRedirect("ItemAlreadyAdded.jsp");
		}
	}
}
	
	
