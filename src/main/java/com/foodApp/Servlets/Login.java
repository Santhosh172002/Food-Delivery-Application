package com.foodApp.Servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.foodApp.DAOImpliment.CustomerDAOImpli;
import com.foodApp.DAOImpliment.RestarantDAOImpli;
import com.foodApp.DTO.Customer;
import com.foodApp.DTO.Restarant;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	static PrintWriter writer;
	ArrayList<Restarant> al;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		writer = resp.getWriter();
		resp.setContentType("text/html");
		String lemail = req.getParameter("lemail");
		String lpassword = req.getParameter("lpassword");
		CustomerDAOImpli cdoi = new CustomerDAOImpli();
        Customer c = cdoi.getCustomer(lemail);
                       
        if(c != null)
        {
        	String cPassword = c.getcPassword();

        	if(lpassword.equals(cPassword))
        	{
        		req.getSession().getAttribute(cPassword);
        		RestarantDAOImpli rdio = new RestarantDAOImpli();
        		ArrayList<Restarant> rl = rdio.getRestarants();
        		req.getSession().setAttribute("rlist", rl);
        		resp.sendRedirect("RestarentDisplay.jsp");
        	}
        	else
        	{
        		writer.write("<h1>Invalid password</h1>");
        	}
        }
        else
        {
        	writer.write("<h1>Invalid EmailId</h1>");
        }
	}
	

}
