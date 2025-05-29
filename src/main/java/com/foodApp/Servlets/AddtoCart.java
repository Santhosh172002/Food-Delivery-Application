package com.foodApp.Servlets;
import java.io.IOException;

import com.foodApp.DAOImpliment.CartItemsDAOImpli;
import com.foodApp.DAOImpliment.RestarantDAOImpli;
import com.foodApp.DTO.CartItems;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AddtoCart")
public class AddtoCart extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mId = Integer.parseInt(req.getParameter("mId"));
		
		RestarantDAOImpli rdim = new RestarantDAOImpli();
		
		
		CartItemsDAOImpli cido = new CartItemsDAOImpli();
		CartItems ci = cido.getCartItems(mId);
		
		
	}
    
}
