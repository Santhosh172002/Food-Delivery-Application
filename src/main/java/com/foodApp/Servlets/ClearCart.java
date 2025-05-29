package com.foodApp.Servlets;

import java.io.IOException;

import com.foodApp.DAOImpliment.CartItemsDAOImpli;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ClearCart")
public class ClearCart extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CartItemsDAOImpli cdio = new CartItemsDAOImpli();
		boolean res = cdio.clearCart();
		if(res) {
			resp.sendRedirect("CartSession");
		}
		
	}
}
