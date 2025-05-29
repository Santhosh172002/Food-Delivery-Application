<%@ page import="com.foodApp.DTO.CartItems,java.util.ArrayList" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <link rel="icon" type="image/svg+xml" href="/vite.svg" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Checkout Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="Checkout.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

  <div class="container">
    <div class="row}', '{
      <div class="col-xl-8">
        <div class="card">
          <div class="card-body">
            <ol class="activity-checkout mb-0 px-4 mt-3">

              <!-- Billing Info -->
              <li class="checkout-item">
                <div class="avatar checkout-icon p-1">
                  <div class="avatar-title rounded-circle bg-primary">
                    <i class="bx bxs-receipt text-white font-size-20"></i>
                  </div>
                </div>
                <div class="feed-item-list">
                  <h5 class="font-size-16 mb-1">Billing Info</h5>
                  <form>
                    <div class="row">
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label" for="billing-name">Name</label>
                          <input type="text" class="form-control" id="billing-name" placeholder="Enter name">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label" for="billing-email-address">Email Address</label>
                          <input type="email" class="form-control" id="billing-email-address" placeholder="Enter email">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-3">
                          <label class="form-label" for="billing-phone">Phone</label>
                          <input type="text" class="form-control" onchange="updateShippingInfo()" id="billing-phone" placeholder="Enter Phone no.">
                        </div>
                      </div>
                    </div>
                    <div class="mb-3">
                      <label class="form-label" for="billing-address">Address</label>
                      <textarea class="form-control" onchange="updateShippingInfo()" id="billing-address" rows="3" placeholder="Enter full address"></textarea>
                    </div>
                    <div class="row">
                      <div class="col-lg-4">
                        <div class="mb-4 mb-lg-0">
                          <label class="form-label">Country</label>
                          <select class="form-control form-select" onchange="updateShippingInfo()" id="billing-country">
                            <option value="0">Select Country</option>
                            <option value="AF">India</option>
                            <option value="AL">Canada</option>
                             <option value="AL">Russia</option>
                              <option value="AL">Europe</option>
                               <option value="AL">Australia</option>
                            
                            
                            <!-- Add more countries as needed -->
                          </select>
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-4 mb-lg-0">
                          <label class="form-label" for="billing-city">City</label>
                          <input type="text" class="form-control" onchange="updateShippingInfo()" id="billing-city" placeholder="Enter City">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="mb-0">
                          <label class="form-label" for="zip-code">Zip / Postal code</label>
                          <input type="text" class="form-control" onchange="updateShippingInfo()" id="zip-code" placeholder="Enter Postal code">
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </li>

              <!-- Shipping Info -->
              <li class="checkout-item">
                <div class="avatar checkout-icon p-1">
                  <div class="avatar-title rounded-circle bg-primary">
                    <i class="bx bxs-truck text-white font-size-20"></i>
                  </div>
                </div>
                <div class="feed-item-list">
                  <h5 class="font-size-16 mb-1">Shipping Info</h5>
                  <div class="row">
                    <div class="col-lg-4 col-sm-6">
                      <label class="card-radio-label mb-0">
                        <input type="radio" name="address" class="card-radio-input" checked>
                        <div class="card-radio text-truncate p-3">
                          <span class="fs-14 mb-4 d-block">Address 1</span>
                          <span class="fs-14 mb-2 d-block" id="shipping-name"></span>
                          <span class="text-muted fw-normal d-block" id="shipping-address"></span>
                          <span class="text-muted fw-normal d-block" id="shipping-phone"></span>
                        </div>
                      </label>
                    </div>
                  </div>
                </div>
              </li>

              <!-- Payment Info -->
              <li class="checkout-item">
                <div class="avatar checkout-icon p-1">
                  <div class="avatar-title rounded-circle bg-primary">
                    <i class="bx bxs-wallet-alt text-white font-size-20"></i>
                  </div>
                </div>
                <div class="feed-item-list">
                  <h5 class="font-size-16 mb-1">Payment Info</h5>
                  <div class="row">
                    <div class="col-lg-3 col-sm-6">
                      <label class="card-radio-label">
                        <input type="radio" name="pay-method" class="card-radio-input">
                        <span class="card-radio py-3 text-center">
                          <i class="bx bx-credit-card d-block h2 mb-3"></i> Credit / Debit Card
                        </span>
                      </label>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                      <label class="card-radio-label">
                        <input type="radio" name="pay-method" class="card-radio-input">
                        <span class="card-radio py-3 text-center">
                          <i class="bx bxl-paypal d-block h2 mb-3"></i> Paypal
                        </span>
                      </label>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                      <label class="card-radio-label">
                        <input type="radio" name="pay-method" class="card-radio-input" checked>
                        <span class="card-radio py-3 text-center">
                          <i class="bx bx-money d-block h2 mb-3"></i> Cash on Delivery
                        </span>
                      </label>
                    </div>
                  </div>
                </div>
              </li>

            </ol>
          </div>
        </div>

        <div class="row my-4">
          <div class="col">
            <a href="RestarentMenuDisplay.jsp" class="btn btn-link text-muted"><i class="mdi mdi-arrow-left me-1"></i> Continue Shopping</a>
          </div>
          <div class="col text-end">
            <a href="OrderPage.jsp" class="btn btn-success"><i class="mdi mdi-cart-outline me-1"></i> Proceed</a>
          </div>
        </div>
      </div>

      <!-- Order Summary -->
      <div class="col-xl-4">
        <div class="card checkout-order-summary">
          <div class="card-body">
            <div class="p-3 bg-light mb-3">
              <h5 class="font-size-16 mb-0">Order Summary <span class="float-end ms-2">3 items</span></h5>
            </div>
            <div class="table-responsive">
              <table class="table table-centered mb-0 table-nowrap">
                <thead>
                  <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Qty</th>
                    <th>Subtotal</th>
                  </tr>
                </thead>
                <%
                  ArrayList<CartItems> cit = (ArrayList<CartItems>) session.getAttribute("cartData");
                  double subtotal = 0;
                %>
                <tbody>
                <% 
                  for (CartItems item : cit) {
                    subtotal += item.getTotal();
                %>
                  <tr>
                    <td><%= item.getItemName() %></td>
                    <td><%= item.getItemPrice() %></td>
                    <td><%= item.getQuantity() %></td>
                    <td><%= item.getTotal() %></td>
                  </tr>
                <% } %>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="3" class="text-start"><strong>Subtotal:</strong></td>
                    <td><strong><%= subtotal %></strong></td>
                  </tr>
                  <tr>
                    <td colspan="3" class="text-start"><strong>Tax (8%):</strong></td>
                    <td><i class="fa-solid fa-indian-rupee-sign"></i><strong> <%= subtotal * 0.08 %></strong></td>
                  </tr>
                  <tr>
                    <td colspan="3" class="text-start"><strong>Delivery Fee:</strong></td>
                    <td><i class="fa-solid fa-indian-rupee-sign"></i><strong> 50</strong></td>
                  </tr>
                  <tr>
                    <td colspan="3" class="text-start"><strong>Total:</strong></td>
                    <td>
                      <strong>
                        <i class="fa-solid fa-indian-rupee-sign"></i> 
                        <%= subtotal + (subtotal * 0.08) + 50 %>
                      </strong>
                    </td>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <footer class="footer mt-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="footer-about">
              <a href="#"><img src="img/footer-logo.png" alt=""></a>
              <p>By continuing past this page, you agree to our Terms of Service, Cookie Policy, Privacy Policy and Content Policies.</p>
              <a href="#"><img src="img/payment.png" alt=""></a>
            </div>
          </div>
          <div class="col-lg-2 col-md-3">
            <div class="footer-widget">
              <h6>About FoodPanda</h6>
              <ul>
                <li><a href="#">Who We Are</a></li>
                <li><a href="#">Blog</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-2 col-md-3">
            <div class="footer-widget">
              <h6>Legal</h6>
              <ul>
                <li><a href="#">Terms & Condition</a></li>
                <li><a href="#">Privacy Policy</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row text-center">
          <div class="col">
            <p>© 2025 FoodPanda™. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    function updateShippingInfo() {
      // Get billing info values
      const name = document.getElementById('billing-name').value || 'N/A';
      const address = document.getElementById('billing-address').value || 'N/A';
      const phone = document.getElementById('billing-phone').value || 'N/A';
      const city = document.getElementById('billing-city').value || '';
      const country = document.getElementById('billing-country').options[document.getElementById('billing-country').selectedIndex].text || '';
      const zip = document.getElementById('zip-code').value || '';

      // Combine address with city, country, and zip
      const fullAddress = address + (city ? ', ' + city : '') + (country ? ', ' + country : '') + (zip ? ', ' + zip : '');

      // Update shipping info display
      document.getElementById('shipping-name').textContent = name;
      document.getElementById('shipping-address').textContent = fullAddress;
      document.getElementById('shipping-phone').textContent = phone;
    }

    // Call the function on page load to set initial values if any
    window.onload = updateShippingInfo;
  </script>
</body>
</html>