<%@ page import="com.foodApp.DTO.RestarentMenu" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Added</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    
    
    
    
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #f6d365, #fda085);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #2e7d32;
            font-size: 28px;
            margin-bottom: 30px;
            background-color: #e8f5e9;
            padding: 10px 20px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        .card {
            width: 320px;
            background-color: #fff;
            padding: 25px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.02);
        }

        .card img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .card h3 {
            font-size: 1.4em;
            color: #333;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 0.95em;
            color: #666;
            margin-bottom: 20px;
        }

        .card a button {
            background-color: #ff7043;
            color: white;
            border: none;
            padding: 10px 18px;
            border-radius: 8px;
            font-size: 0.95em;
            cursor: pointer;
            margin: 5px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .card a button:hover {
            background-color: #ff8a65;
            transform: scale(1.05);
        }

        .card a:last-child button {
            background-color: #42a5f5;
        }

        .card a:last-child button:hover {
            background-color: #64b5f6;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<% RestarentMenu rm = (RestarentMenu)session.getAttribute("iteminfo"); %>


<h1 style="color: green; font-size: 28px; text-align: center;">
  <i class="fa-solid fa-circle-check"></i> Your Item Was Added Successfully!
</h1>


<div class="card">
    <img src="<%= rm.getImagePath() %>" alt="Food Item">
    <h3><%= rm.getItemName() %></h3>
    <p><%= rm.getIdsc() %></p>

    <a href="RestarentMenuDisplay.jsp">
    <button type="button" style="font-size: 18px; padding: 10px 16px; border-radius: 8px; background-color: #ff7043; color: white; border: none; cursor: pointer;">
  <i class="fa-solid fa-cart-shopping"></i> Add More Items
</button>


    <a href="CartSession">
        <button style="font-size: 16px; padding: 10px; border-radius: 8px; background: #007bff; color: white; border: none;">
  <i class="fa-solid fa-cart-shopping"></i> Go to My Cart
</button>


    </a>
</div>

</body>
</html>
