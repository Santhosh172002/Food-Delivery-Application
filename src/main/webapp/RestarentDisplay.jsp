<%@ page import="java.util.ArrayList" %>
<%@ page import="com.foodApp.DTO.Restarant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Restaurants</title>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: "Poppins", serif;
    }
    :root{
        --dark-bg-gradient: linear-gradient(135deg, #2c3e50, #4ca1af);
        --white: #FFFFFF;
        --highlight: #FF6347;
        --text-color: #333333;
        --button-bg: #FF6347;
        --button-hover: #FF4500;
        --rating-bg: #FFD700;
    }
    body{
        background: var(--dark-bg-gradient);
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        color: var(--white);
    }
    .container{
        width: 90%;
        max-width: 1200px;
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
        justify-content: center;
    }
    .title{
        text-align: center;
        font-size: 2em;
        margin-bottom: 20px;
        color: var(--highlight);
        margin-left: 500px;
    }
    #Cart{
       margin-left : 300px;
       text-decoration: None;
       color: var(--highlight);
    }
    .card{
        width: 350px;
        background: var(--white);
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.3);
        position: relative;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover{
        transform: translateY(-10px);
        box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.4);
    }
    .card img{
        width: 100%;
        height: 200px;
        object-fit: cover;
        transition: all 0.5s ease;
    }
    .card img:hover{
        transform: scale(1.05);
    }
    .card h2{
        padding: 20px;
        color: var(--text-color);
        font-size: 1.5em;
        margin: 0;
        font-weight: 600;
    }
    .rating{
        position: absolute;
        top: 15px;
        right: 15px;
        background: var(--rating-bg);
        padding: 8px 12px;
        border-radius: 50px;
        font-size: 1em;
        color: var(--white);
        font-weight: 600;
        animation: bounce 1.5s infinite;
        display: flex;
        align-items: center;
        gap: 5px;
    }
    @keyframes bounce {
        0%, 100% {
            transform: translateY(0);
        }
        50% {
            transform: translateY(-5px);
        }
    }
    .rating i {
        font-size: 0.9em;
    }
    .card .restarent-info{
        padding: 10px 20px 20px 20px;
        color: var(--text-color);
    }
    .card .restarent-info p{
        margin: 8px 0;
        display: flex;
        align-items: center;
        gap: 8px;
        font-size: 0.9em;
    }
    .card .restarent-info p i {
        color: var(--highlight);
    }
    .card button{
        background: var(--button-bg);
        border: none;
        padding: 10px;
        margin: 10px 10px 0 10px;
        border-radius: 8px;
        font-size: 1em;
        font-weight: 600;
        color: var(--white);
        cursor: pointer;
        transition: background 0.3s, box-shadow 0.3s;
        box-shadow: 0px 4px 10px rgba(255, 99, 71, 0.4);
    }
    .card button:hover{
        background: var(--button-hover);
        box-shadow: 0px 6px 15px rgba(255, 69, 0, 0.5);
    }
    .button-container {
        display: flex;
        gap: 10px;
        padding: 10px 20px 20px 20px;
    }
    </style>
</head>
<body>
    <h1 class="title">DELICIOUS RESTAURANTS <a id="Cart" href="CartSession">Go to MyCart</a></h1>
    
    <div class="container">
    <% ArrayList<Restarant> restl = (ArrayList<Restarant>)session.getAttribute("rlist"); 
       for(Restarant r : restl){ 
    %>
        <div class="card">
            <img src="<% out.println(r.getImagepath()); %>" alt="Restaurant Image">
            <div class="rating"><i class="fa-solid fa-star"></i> <% out.println(r.getRating()); %></div>
            <h2><% out.println(r.getrName()); %></h2>
            <div class="restarent-info">
                <p><i class="fa-regular fa-address-card"></i>Id : <% out.println(r.getrId()); %></p>
                <p><i class="fa-solid fa-circle"></i>Status : <% out.println(r.getIsActive() ? "Open" : "Close"); %></p>
                <p><i class="fa-solid fa-location-dot"></i>Address : <% out.println(r.getRaddress()); %></p>
            </div>
            <div class="button-container">
                <a href="RestarentMenuDisp?rId=<%= r.getrId() %>"><button>View Menu</button></a>
            </div>
        </div>
        <% } %>
    </div>
</body>
</html>
