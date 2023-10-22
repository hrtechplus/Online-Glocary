<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Address and Payment for Order</title>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div class="container py-5">
    <div class="row">
        <div class="col-md-8">
            <h2 class="mb-4">Order Summary</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
                        <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %></th>
                    </tr>
                </thead>
                <thead>
                    <tr>
                        <th scope="col">S.No</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Category</th>
                        <th scope="col"><i class="fa fa-inr"></i> Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Sub Total</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    int sno = 0;
                    ResultSet rs1 = st.executeQuery("select * from product inner join card on product.id=card.product_id and card.email='"+email+"' and card.address is NULL");
                    while(rs1.next()){
                        sno++;
                    %>
                        <tr>
                            <td><% out.println(sno); %></td>
                            <td><%=rs1.getString(2) %></td>
                            <td><%=rs1.getString(3) %></td>
                            <td><i class="fa fa-inr"></i> <%=rs1.getString(4) %></td>
                            <td><%=rs1.getString(8) %></td>
                            <td><i class="fa fa-inr"></i><%=rs1.getString(10) %> </td>
                        </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <div class="col-md-4">
            <h2 class="mb-4">Order Details</h2>
            <form action="addressPaymentForOrderAction.jsp" method="post" class="needs-validation" novalidate>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" name="address" class="form-control" id="address" placeholder="Enter Address" value="<%=rs2.getString(7) %>" required>
                    </div>
                    <div class="col-md-6">
                        <label for="city" class="form-label">City</label>
                        <input type="text" name="city" class="form-control" id="city" placeholder="Enter City" value="<%=rs2.getString(8) %>" required>
                    </div>
                </div>

               
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="state" class="form-label">State</label>
                        <input type="text" name="state" class="form-control" id="state" placeholder="Enter State" value="<%=rs2.getString(9) %>" required>
                    </div>
                    <div class="col-md-6">
                        <label for="country" class="form-label">Country</label>
                        <input type="text" name="country" class="form-control" id="country" placeholder="Enter Country" value="<%=rs2.getString(10) %>" required>
                    </div>
                </div>

                <div class="alert alert-warning">
                    <p class="mb-0">* If there is no address, it means that you did not set your address!</p>
                    <p class="mb-0">* This address will also be updated to your profile</p>
                </div>

                <hr class="my-4">

                <div class="row mb-3">
                    <div class="col-md-6">
                        <h3>Select way of Payment</h3>
                        <select class="form-select" name="paymentMethod" aria-label="Payment Method">
                            <option value="Cash on delivery (COD)">Cash on delivery (COD)</option>
                            <option value="Online Payment">Online Payment</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <h3>Pay online on this codeWithV4@pay.com</h3>
                        <input type="text" name="trnsactionId" class="form-control" placeholder="Enter Transaction ID">
                    </div>
                </div>

                <div class="alert alert-warning">
                    <p class="mb-0">* If you select online Payment, then enter your transaction ID here; otherwise, leave this blank</p>
                </div>

                <hr class="my-4">

                <div class="row mb-3">
                    <div class="col-md-6">
                        <h3>Mobile Number</h3>
                        <input type="text" name="mobileNumber" class="form-control" placeholder="Enter Mobile Number" value="<%=rs2.getString(3) %>" required>
                        <p class="mb-0">* This mobile number will also be updated to your profile</p>
                    </div>
                    <div class="col-md-6">
                        <div class="alert alert-danger">
                            <p class="mb-0">* If you enter the wrong transaction ID, your order may be canceled!</p>
                        </div>

                        <button type="submit" class="btn btn-primary">Proceed to Generate Bill and Save <i class='far fa-arrow-alt-circle-right'></i></button>

                        <div class="alert alert-warning">
                            <p class="mb-0">* Fill the form correctly</p>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%
}
}
catch(Exception e)
{System.out.println(e);}

%>

</body>
</html>

