<%@ page import="com.foodApp.DTO.CartItems,java.util.ArrayList" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="icon" href="imagesResturent/best food.jpg" type="png/icon">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Order Confirmed</title>
  <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.5.1/dist/confetti.browser.min.js"></script>

  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
    }

    .container {
      background-color: #ffffff;
      max-width: 600px;
      margin: auto;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      padding-bottom: 40px;
    }

    .center {
      text-align: center;
    }

    .order-details {
      padding: 20px;
    }

    .order-details h2,
    .order-details h3 {
      color: #333;
      border-bottom: 1px solid #ccc;
      padding-bottom: 5px;
      margin-bottom: 15px;
    }

    .order-number {
      font-size: 16px;
      font-weight: bold;
      margin-bottom: 20px;
      color: #444;
    }

    .item {
      display: flex;
      justify-content: space-between;
      margin-bottom: 10px;
      padding: 10px;
      background-color: #fafafa;
      border: 1px solid #ddd;
      border-radius: 8px;
    }

    .item-details {
      font-size: 16px;
      color: #333;
    }

    .item-price {
      font-weight: bold;
      color: #28a745;
    }

    .order-summary {
      margin-top: 20px;
      padding-top: 10px;
      border-top: 1px dashed #ccc;
    }

    .summary-item {
      display: flex;
      justify-content: space-between;
      margin: 8px 0;
      font-size: 15px;
      color: #333;
    }

    .order-total {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
      font-size: 18px;
      font-weight: bold;
      color: #000;
      border-top: 2px solid #000;
      padding-top: 10px;
    }

    .actions {
      margin-top: 25px;
      display: flex;
      gap: 15px;
      justify-content: center;
    }

    .button {
      padding: 10px 20px;
      background-color: #ff7300;
      color: white;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .button:hover {
      background-color: #e56100;
    }

    .estimated-time {
      margin-top: 20px;
      padding: 15px;
      background-color: #e9f7ef;
      border: 1px dashed #28a745;
      border-radius: 6px;
      color: #2e7d32;
      font-weight: bold;
      text-align: center;
    }

    footer {
      padding: 20px;
      text-align: center;
      font-size: 14px;
      background-color: #f0f0f0;
    }

    footer a {
      color: DarkRed;
      text-decoration: underline;
      margin: 0 10px;
    }
  </style>
</head>

<body onload="blastConfetti()">
  <div class="container">
    <div class="center">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZCuemaV3NI89qBkreuBYWlhFZ1741IQ1o-Q&s" alt="checked-logo" width="90">
      <h1 style="color: #3B4856;">Thank you for your Order</h1>
      <p style="color: #80C4F4; font-size: 20px; font-weight: bold;">We received your order<br>thanks for shopping!</p>
      <p style="color: #2E2E31;">We believe this is the start of a wonderful friendship!</p>
      <p style="color: #2E2E31;">We're giving you 10% off an order of min 100Rs or more to help us get to know one another better!</p>
    </div>

    <div class="center">
      <a href="#" class="button">Check Order Status</a>
    </div>

    <div class="order-details">
      <h2>Order Details</h2>
      <div class="order-number">
        Order Number: <span id="order-number">ORD-12345</span>
      </div>

      <div class="order-items">
        <h3>Your Meal</h3>
        <%
          ArrayList<CartItems> cit = (ArrayList<CartItems>) session.getAttribute("cartData");
          double subtotal = 0;
          for (CartItems item : cit) {
              subtotal += item.getTotal();
        %>
          <div class="item">
            <div class="item-details">
              <%= item.getItemName() %> × <%= item.getQuantity() %>
            </div>
            <div class="item-price">&#x20B9; <%= item.getTotal() %></div>
          </div>
        <% } %>

        <div class="order-summary">
          <h3>Order Summary</h3>
          <div class="summary-item">
            <span>Subtotal:</span> <span>&#x20B9; <%= subtotal %></span>
          </div>
          <div class="summary-item">
            <span>Tax (18%):</span> <span>&#x20B9; 50</span>
          </div>
          <div class="summary-item">
            <span>Delivery:</span> <span>&#x20B9; <%= String.format("%.2f", subtotal * 0.08) %></span>
          </div>
        </div>

        <div class="order-total">
          <span>Total:</span> 
          <span>&#x20B9; <%= String.format("%.2f", subtotal + (subtotal * 0.08) + 50) %></span>
        </div>

        <div class="actions">
          <form action="#">
            <button class="button">Track Order</button>
          </form>
          <form action="home">
            <button class="button">Order Again</button>
          </form>
        </div>
      </div>

      <div class="estimated-time">
        Estimated Delivery Time: <span id="estimated-time">30-45 mins</span>
      </div>
    </div>

    <footer>
      &copy; 2018 - 2022 FoodPanda | All Rights Reserved<br>
      Please see our returns policy for more information.<br>
      We will always keep your data safe and secure. Click here to know why we need it.<br>
      <a href="https://www.linkedin.com/in/gdattasaisanthosh/">CodeWithSanthosh</a><br>
      <a href="#">Unsubscribe</a> | <a href="#">Help & Contact</a>
    </footer>
  </div>

  <script>
    function blastConfetti() {
      var duration = 3 * 1000;
      var animationEnd = Date.now() + duration;
      var defaults = { startVelocity: 30, spread: 1060, ticks: 1060, zIndex: 1000 };

      function randomInRange(min, max) {
        return Math.random() * (max - min) + min;
      }

      var interval = setInterval(function () {
        var timeLeft = animationEnd - Date.now();

        if (timeLeft <= 0) {
          return clearInterval(interval);
        }

        var particleCount = 50 * (timeLeft / duration);
        confetti(Object.assign({}, defaults, {
          particleCount,
          origin: {
            x: randomInRange(0.1, 0.9),
            y: Math.random() - 0.2
          }
        }));
      }, 200);
    }
  </script>
</body>
</html>

    