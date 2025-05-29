package com.foodApp.Servlets;


import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import com.foodApp.DTO.CartItems;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  HttpSession session = req.getSession();
    	  CartItems cart = (CartItems) session.getAttribute("cart");
          
          
          
    	if(cart != null &&  !cart.getItemName().isEmpty()) {
          
            
            // Calculate subtotal from all cart items
            double subtotal = 0.0;
            for (CartItem item : cart.getItemName()) {
                subtotal += item.getPrice() * item.getQuantity();
            }
            
            // Calculate tax, delivery fee and final amount
            double tax = subtotal * 0.18; // 18% tax
            double deliveryFee = 50.0;
            double finalAmount = subtotal + tax + deliveryFee;
            
         // Set the calculated amounts for display in JSP
            session.setAttribute("subtotal", subtotal);
            session.setAttribute("tax", tax);
            session.setAttribute("deliveryFee", deliveryFee);
            session.setAttribute("finalAmount", finalAmount);
    }
    	resp.sendRedirect("checkout.jsp");
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        CartItems cart = (CartItems) session.getAttribute("cart");
       
        
        if(user == null) {
            RequestDispatcher rd = req.getRequestDispatcher("account.jsp");
            rd.forward(req, resp);
            return;
        }
        
        if(cart != null && user != null && !cart.getItems().isEmpty()) {
            String paymentMethod = req.getParameter("pay-method");
            String address = req.getParameter("address");
            
            // Calculate subtotal from all cart items
            double subtotal = 0.0;
            for(CartItem item : cart.getItems().values()) {
                subtotal += item.getPrice() * item.getQuantity();
            }
            
            // Calculate tax, delivery fee and final amount
            double tax = subtotal * 0.18; // 18% tax
            double deliveryFee = 50.0;
            double finalAmount = subtotal + tax + deliveryFee;
            
         // Set the calculated amounts for display in JSP
            session.setAttribute("subtotal", subtotal);
            session.setAttribute("tax", tax);
            session.setAttribute("deliveryFee", deliveryFee);
            session.setAttribute("finalAmount", finalAmount);
            
            System.out.println("the final amount is "+finalAmount);
            
            // Create and save the order
            Order order = new Order();
            order.setUserId(user.getUserId());
            order.setRestaurantId((int) session.getAttribute("newRestaurantId"));
            order.setOrderDate(new Timestamp(new Date().getTime()));
            order.setPaymentMode(paymentMethod);
            order.setStatus("pending");
            order.setAddress(address);
            order.setTotalAmount(finalAmount);
            
            int orderId = orderDAO.addOrder(order);
            
            // Save each order item
            for(CartItem item : cart.getItems().values()) {
                int itemId = item.getItemId();
                int quantity = item.getQuantity();
                double itemTotal = item.getPrice() * quantity;
                
                OrderItem orderItem = new OrderItem(orderId, itemId, quantity, itemTotal);
                orderItemDAOImpl.addOrderItem(orderItem);
            }
            
            // Clear the cart and set order in session
            session.setAttribute("order", order);
            
            
            
            resp.sendRedirect("OrderConfirm.jsp");
//            session.removeAttribute("cart");
        } 
        else {
            resp.sendRedirect("cart.jsp");
        }
    }
}