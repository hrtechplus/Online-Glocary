<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style >
		@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css");
	</style>
  <link rel="stylesheet" href="css/home-style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);
</script>
</head>
<body>
<br>
<table>
<thead>

<%
String email=session.getAttribute("email").toString();
int total=0;
int sno=0;

try{
	Connection con=connectionProvider.getcon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(total) from card where email='"+email+"' and address is NULL");
	while(rs.next()){
		total=rs.getInt(1);
	}

%>

 <tr>
      <th scope="col" class="text-center">
        <a href="myCart.jsp"><i class='fas fa-arrow-circle-left'></i> Back</a>
      </th>
      <th scope="col" class="bg-warning text-center">
        Total: <i class="fa fa-lkr"></i> <%out.println(total); %>
      </th>
    </tr>
  </thead>
  <thead>
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Product Name</th>
      <th scope="col">Category</th>
      <th scope="col" class="text-center"><i class="fa fa-lkr">Rs</i> Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Sub Total</th>
    </tr>
  </thead>
  <tbody>

              
  <%
  ResultSet rs1=st.executeQuery("select * from product inner join card on product.id=card.product_id and card.email='"+email+"' and card.address is NULL");
  while(rs1.next()){
  
  %>    
          <tr>
			<%sno=sno+1; %>
           <td><% out.println(sno); %></td>
            <td><%=rs1.getString(2) %></td>
            <td><%=rs1.getString(3) %></td>
            <td><i class="fa fa-lkr">Rs</i> <%=rs1.getString(4) %></td>
            <td> <%=rs1.getString(8) %></td>
            <td><i class="fa fa-lkr">Rs</i><%=rs1.getString(10) %> </td>
            </tr>
         <%}
  			ResultSet rs2=st.executeQuery("select * from user where email='"+email+"'");
  			while(rs2.next()){
  				
  				%>
        </tbody>
      </table>
      
<form action="addressPaymentForOrderAction.jsp" method="post" class="container">
  <hr class="my-4">

  <div class="row">
    <div class="col-md-6">
      <h3>Enter Address</h3>
      <input type="text" name="address" placeholder="Enter Address" class="form-control" value="<%=rs2.getString(7) %>" required>
    </div>

    <div class="col-md-6">
      <h3>Enter City</h3>
      <input type="text" name="city" placeholder="Enter City" class="form-control" value="<%=rs2.getString(8) %>" required>
    </div>
  </div>

  <div class="row">
    <div class="col-md-6">
      <h3>Enter State</h3>
      <input type="text" name="state" placeholder="Enter State" class="form-control" value="<%=rs2.getString(9) %>" required>
    </div>

    <div class="col-md-6">
      <h3>Enter Country</h3>
      <input type="text" name="country" placeholder="Enter Country" class="form-control" value="<%=rs2.getString(10) %>" required>
    </div>
  </div>

  <p class="text-danger">* If there is no address, it means that you did not set your address!</p>
  <p class="text-danger">* This address will also be updated to your profile</p>

  <hr class="my-4">

  <div class="row">
    <div class="col-md-6">
      <h3> Payment Method</h3>
      <select name="paymentMethod" class="form-select">
        <option value="Cash on delivery (COD)">Cash on delivery (COD)</option>
        <option value="Online Payment">Online Payment</option>
      </select>
    </div>

    <div class="col-md-6">
      <h3>Pay with LankaID</h3>
      <input type="text" name="trnsactionId" placeholder="Enter Transaction ID" class="form-control">
      <p class="text-danger">* If you select online Payment, then enter your LankaID here; otherwise, leave this blank</p>
    </div>
  </div>

  <hr class="my-4">

  <div class="row">
    <div class="col-md-6">
      <h3>Mobile Number</h3>
      <input type="text" name="mobileNumber" placeholder="Enter Mobile Number" class="form-control" value="<%=rs2.getString(3) %>" required>
      <p class="text-danger">* This mobile number will also be updated to your profile</p>
    </div>

    <div class="col-md-6">
      <p class="text-danger">* If you enter the wrong transaction ID, your order may be canceled!</p>
      <button type="submit" class="btn btn-primary">Proceed to Generate Bill and Save <i class='far fa-arrow-alt-circle-right'></i></button>
      <p class="text-danger">* Fill the form correctly</p>
    </div>
  </div>
</form>


<%
}
}
catch(Exception e)
{System.out.println(e);}

%>

      <br>
      <br>
      <br>

</body>
</html>