package com.foodApp.Servlets;
import java.io.IOException;
import java.io.PrintWriter;

import com.foodApp.DAOImpliment.CustomerDAOImpli;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {
	static PrintWriter writer;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		writer = resp.getWriter();
		resp.setContentType("text/html");
		String rname = req.getParameter("rname");
		String rEmail = req.getParameter("remail");
		long rNumber = Long.parseLong(req.getParameter("rnumber"));
		String rPassword = req.getParameter("rpassword");
		String cPassword = req.getParameter("cpassword");
		
		boolean res=false;
		CustomerDAOImpli cdoi = new CustomerDAOImpli();
		if(rPassword.equalsIgnoreCase(cPassword)) {
			 res = cdoi.addCustomer(rname, rEmail, rNumber, rPassword);
			 res=true;
		}
		
		 
		 if(res == true)
		 {
			 writer.write("<h3>"+ rname + "Registration Completed.Please Login </h3>");
		 }
		 else
		 {
			 writer.write(" <h3> Invalid Details.Please Register Again </h3>");
		 }	
	}	
}
