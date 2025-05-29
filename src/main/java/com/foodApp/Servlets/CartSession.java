package com.foodApp.Servlets;
import java.io.IOException;
import java.util.ArrayList;

import com.foodApp.DAOImpliment.CartItemsDAOImpli;
import com.foodApp.DTO.CartItems;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CartSession")
public class CartSession extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CartItemsDAOImpli cdim = new CartItemsDAOImpli();
		ArrayList<CartItems> ci = cdim.getCartItems();
		int bill = cdim.getTotalBill();
		int items = cdim.getTotalItems();
		
			req.getSession().setAttribute("cartData", ci);
			req.getSession().setAttribute("tBill", bill);
			req.getSession().setAttribute("titems", items);
			resp.sendRedirect("CartSession.jsp");
	}
}
