<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Already Added</title>
    <style>
         a{
          text-decoration : none;
         } 
    </style>
</head>
<body>
    <h1 style="text-align: center; color:red">Your Item Already Added</h1>
    <div style="
    width: 1000px; 
    padding: 20px; 
    border-radius: 10px; 
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
    background-color: #ffffff; 
    font-family: Arial, sans-serif; 
    color: #333; 
    text-align: center; 
    position: relative;
    margin: 20px auto;">

    <!-- Buttons -->
    <a href="RestarentMenuDisplay.jsp">
    <button 
        style="
            background-color: #ff523b; 
            color: #ffffff; 
            border: none; 
            border-radius: 6px; 
            padding: 10px 15px; 
            font-size: 0.9em; 
            cursor: pointer; 
            margin-right: 5px;">
        Add More Items
    </button>
	</a>
    <a href ="CartSession">
    <button style="
        background-color: #007bff; 
        color: #ffffff; 
        border: none; 
        border-radius: 6px; 
        padding: 10px 15px; 
        font-size: 0.9em; 
        cursor: pointer;">
        Go to My Cart
    </button>
    </a>

    <!-- Success Message -->
    <p id="successMessage" style="
        display: none; /* Hidden initially */
        color: green; 
        font-weight: bold; 
        margin-top: 15px;">
        Item added successfully!
    </p>
</div>


</body>
</html>