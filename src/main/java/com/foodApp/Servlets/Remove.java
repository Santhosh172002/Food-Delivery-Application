package com.foodApp.Servlets;

import java.io.IOException;

import com.foodApp.DAOImpliment.CartItemsDAOImpli;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/Remove")
public class Remove extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mid = (int)Integer.parseInt(req.getParameter("mId"));
		CartItemsDAOImpli cdio = new CartItemsDAOImpli();
		boolean status = cdio.remove(mid);
		if(status) {
			resp.sendRedirect("CartSession");
		}
	}
}
