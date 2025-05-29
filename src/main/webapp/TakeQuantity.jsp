<%@ page import="com.foodApp.DTO.RestarentMenu" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter Quantity</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        /* Reset & Font */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        /* Colorful background */
        body {
            height: 100vh;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5); /* Soft Blue Gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Form container */
        form {
            background-color: #ffffff;
            padding: 35px 30px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            max-width: 420px;
            width: 100%;
            transition: transform 0.3s ease;
        }

        form:hover {
            transform: scale(1.02);
        }

        /* Heading */
        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
            font-size: 24px;
            font-weight: 600;
        }

        /* Labels */
        label {
            display: block;
            font-size: 14px;
            font-weight: 500;
            color: #555;
            margin-bottom: 6px;
        }

        /* Input fields */
        input[type="number"] {
            width: 100%;
            padding: 12px 14px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 20px;
            transition: border-color 0.3s;
        }

        input[type="number"]:focus {
            border-color: #7C4DFF;
            outline: none;
        }

        /* Submit button */
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            background: linear-gradient(to right, #7C4DFF, #E040FB);
            color: white;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #9575CD, #F06292);
            transform: scale(1.03);
        }

        @media (max-width: 500px) {
            form {
                padding: 25px 20px;
            }

            h3 {
                font-size: 20px;
            }
        }
         .cart-icon {
    font-size: 24px;
    color: green;
    margin-right: 8px;
  }
    </style>
</head>
<body>
    <% RestarentMenu rm = (RestarentMenu)session.getAttribute("cartItem"); %>
    <form action="AddCartItem">
        <h3><i class="fa-solid fa-cart-shopping cart-icon"></i>Confirm Quantity</h3>
        <label for="mId">Item ID</label>
        <input type="number" id="mId" value="<%= rm.getMid() %>" name="mId" readonly>

        <label for="quantity">Quantity</label>
        <input type="number" id="quantity" name="quantity" placeholder="Enter Quantity" min="1" required>

        <input type="submit" value=" Confirm Order"> 
</body>
</html>
