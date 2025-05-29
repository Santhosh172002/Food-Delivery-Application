<%@ page import="com.foodApp.DTO.CartItems,java.util.ArrayList" %>

<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Shopping Cart</title>
<style>
    /* Basic Styles and Background */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    /* Cart Container */
    .cart-container {
        width: 1200px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        padding: 20px;
        display: flex;
        flex-direction: column;
        overflow: hidden;
    }

    /* Scrolling Text */
    .scrolling-text {
        font-size: 16px;
        color: #333;
        font-weight: bold;
        text-align: center;
        overflow: hidden;
        white-space: nowrap;
        box-sizing: border-box;
        animation: scroll 8s linear infinite;
        margin-bottom: 20px;
        text-transform: uppercase;
    }

    @keyframes scroll {
        from { transform: translateX(100%); }
        to { transform: translateX(-100%); }
    }

    /* Cart Header Section */
    .cart-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        font-size: 18px;
    }

    .total-items {
        color: #333;
        font-weight: bold;
    }

    .welcome-message {
        font-size: 18px;
        font-weight: bold;
        color: #333;
        text-align: center;
        flex-grow: 1;
    }

    .clear-cart-button {
        background-color: #ff5f5f;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 6px 12px;
        font-size: 12px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .clear-cart-button:hover {
        background-color: #ff4b4b;
    }

    /* Cart Item */
    .cart-item {
        display: flex;
        align-items: center;
        padding: 10px 0;
        border-bottom: 1px solid #eee;
    }

    /* Item Image */
    .cart-item img {
        width: 60px;
        height: 60px;
        border-radius: 8px;
        margin-right: 15px;
    }

    /* Item Details */
    .item-details {
        flex-grow: 1;
    }

    .item-name {
        font-size: 18px;
        color: #333;
        margin-bottom: 5px;
    }

    .item-price, .item-quantity {
        font-size: 14px;
        color: #666;
    }

    /* Remove Button */
    .remove-button {
        background-color: #ff5f5f;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 6px 10px;
        font-size: 12px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .edit-button {
        background-color: rgb(26, 191, 26);
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 6px 30px;
        margin-right: 30px;
        font-size: 12px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .remove-button:hover {
        background-color: #ff4b4b;
    }

    /* Bottom Section */
    .bottom-section {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 20px;
    }

    /* Total Amount */
    .total-amount {
        font-size: 18px;
        font-weight: bold;
        color: #333;
    }

    /* Action Buttons */
    .action-buttons {
        display: flex;
        gap: 10px;
    }

    .action-button {
        padding: 10px;
        font-size: 14px;
        font-weight: bold;
        color: #fff;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .cancel-button {
        background-color: #ff5f5f;
    }

    .cancel-button:hover {
        background-color: #ff4b4b;
    }

    .confirm-button {
        background-color: #4caf50;
    }

    .confirm-button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<% int tBill = (int)session.getAttribute("tBill");
   int titems =(int)session.getAttribute("titems");
%>


<div class="cart-container">
    <!-- Scrolling Text -->
    <div class="scrolling-text">Your Cart Items</div>

    <!-- Cart Header Section -->
    <div class="cart-header">
        <!-- Total Items -->
        <div class="total-items">Items: <%= titems %></div>

        <!-- Welcome Message -->
        <div class="welcome-message"><i class="fa-solid fa-cart-shopping"></i> Welcome to Cart Session</div>

        <!-- Clear Cart Button -->
        <div>
         <a href="RestarentMenuDisplay.jsp" > <button class="clear-cart-button">Add Items </button> </a> 
        <a href="ClearCart"><button class="clear-cart-button">Clear Cart</button></a>
        </div>
       
    </div>
    
    <% ArrayList<CartItems> cit = (ArrayList<CartItems>)session.getAttribute("cartData"); 
	  for(CartItems item : cit){ %>
    <!-- Cart Item 1 -->
    <div class="cart-item">
        <img src="<%= item.getItemImage() %>" alt="Item Image">
        <div class="item-details">
            <div class="item-name"><%= item.getItemName() %></div>
            <div class="item-price">Price: <i class="fa-solid fa-indian-rupee-sign"></i><%= item.getItemPrice() %></div>
            <div class="item-quantity">Quantity: <%= item.getQuantity() %></div>
        </div>
        <a href="UpdateQuantity"><button class="edit-button">Edit</button></a>
        <a href="Remove?mId=<%= item.getmId() %>"><button class="remove-button">Remove</button></a>
    </div>

 	<% } %>

    <!-- Bottom Section -->
    <div class="bottom-section">
        <!-- Total Amount -->
        <div class="total-amount">Your Total: <i class="fa-solid fa-indian-rupee-sign"></i><%= tBill %></div>

        <!-- Action Buttons -->
        
        <div class="action-buttons">
            <button class="action-button cancel-button">Cancel</button>
            <form action="Checkout.jsp">
            <button class="action-button confirm-button">Confirm</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
