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
                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <input type="text" name="address" class="form-control" id="address" placeholder="Enter Address" value="<%=rs2.getString(7) %>" required>
                    <div class="form-text text-danger">*If there is no address it means that you did not set your address!</div>
                    <div class="form-text text-danger">*This address will also be updated to your profile</div>
                </div>
                <div class="mb-3">
                    <label for="city" class="form-label">City</label>
                    <input type="text" name="city" class="form-control" id="city" placeholder="Enter City" value="<%=rs2.getString
