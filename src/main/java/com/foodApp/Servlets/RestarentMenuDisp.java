package com.foodApp.Servlets;
import java.io.IOException;
import java.util.ArrayList;

import com.foodApp.DAOImpliment.RestarentMenuDAOImpli;
import com.foodApp.DTO.RestarentMenu;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RestarentMenuDisp")
public class RestarentMenuDisp extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int rId = Integer.parseInt(req.getParameter("rId"));
		
		RestarentMenuDAOImpli rmdi = new RestarentMenuDAOImpli();
		ArrayList<RestarentMenu> rml = rmdi.getRestarentMenu(rId);
		req.getSession().setAttribute("rmList", rml);
		resp.sendRedirect("RestarentMenuDisplay.jsp");
	}
}
