package com.foodApp.Servlets;
import java.io.IOException;

import com.foodApp.DAOImpliment.RestarentMenuDAOImpli;
import com.foodApp.DTO.RestarentMenu;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TakeQuantity")
public class TakeQuantity extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mId = Integer.parseInt(req.getParameter("mId"));
		
		RestarentMenuDAOImpli rdim = new RestarentMenuDAOImpli();
		RestarentMenu ri = rdim.getMenuItem(mId);
		
		if(ri != null) {
			req.getSession().setAttribute("cartItem", ri);
			resp.sendRedirect("TakeQuantity.jsp");
		}
	}
}
