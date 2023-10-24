<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="footer.jsp" %>
<html>
<head>
<style >
		@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css");
	</style>
  <link rel="stylesheet" href="css/home-style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

<title>Bill</title>
</head>
<body bgcolor="white">

<%
String email=session.getAttribute("email").toString();

try{
	int total=0;
	int sno=0;
	Connection con=connectionProvider.getcon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(total) from card where email='"+email+"' and status='bill'");
	 while(rs.next())
	 {
		 total=rs.getInt(1);
		 
	 }
	 ResultSet rs2=st.executeQuery("select * from user inner join card where card.email='"+email+"' and user.email='"+email+"' and card.status='bill'");
	 while(rs2.next()){
		 
%>

<h3>SLIIT GLOCERY CENTER</h3>
<hr>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h4>Name: <%=rs2.getString(1)%></h4>
    </div>
    <div class="col-sm-4">
      <h4>Email: <%out.println(email); %></h4>
    </div>
    <div class="col-sm-4">
      <h4>Mobile Number: <%=rs2.getString(20) %></h4>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-4">
      <h4>Order Date: <%=rs2.getString(21) %></h4>
    </div>
    <div class="col-sm-4">
      <h4>Payment Method: <%=rs2.getString(23) %></h4>
    </div>
    <div class="col-sm-4">
      <h4>Expected Delivery: <%=rs2.getString(22) %></h4>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-4">
      <h4>Transaction Id: <%=rs2.getString(24) %></h4>
    </div>
    <div class="col-sm-4">
      <h4>City: <%=rs2.getString(17) %></h4>
    </div>
    <div class="col-sm-4">
      <h4>Address: <%=rs2.getString(16) %></h4>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-4">
      <h4>State: <%=rs2.getString(18) %></h4>
    </div>
    <div class="col-sm-4">
      <h4>Country: <%=rs2.getString(19) %></h4>
    </div>
  </div>
</div>


<hr>
<% break;} %>

	
	<br>
	
<div class="mx-5">
  <table id="customers" class="shadow p-5" style="max-width:800px">
    <h3>Product Details</h3>
    <tr>
      <th>S.No</th>
      <th>Product Name</th>
      <th>category</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Sub Total</th>
    </tr>
    <%
    ResultSet rs3=st.executeQuery("select * from card inner join product where card.product_id=product.id and card.email='"+email+"' and card.status='bill'");
    while(rs3.next()){
      sno=sno+1;
    %>
    <tr>
      <td><%out.println(sno); %></td>
      <td><%=rs3.getString(17) %></td>
      <td><%=rs3.getString(18) %></td>
      <td><%=rs3.getString(19) %></td>
      <td><%=rs3.getString(3) %></td>
      <td><%=rs3.getString(5) %></td>
    </tr>
    <%} %>
  </table>
</div>

<div class="row mt-5">
  <div class="col-12 d-flex justify-content-center mx-5"  style="max-width:800px">
    <div class="col-6">
      <h3>Total: <%out.println(total); %> </h3>
    </div>
    <div class="col-6 text-center">
      <a href="continueShopping.jsp" class="btn btn-primary">Continue Shopping</a>
      <a onclick="window.print();" class="btn btn-primary">Print</a>
    </div>
  </div>
</div>

<br><br><br><br>
<%

}
catch(Exception e){
	System.out.println(e);
}


%>
</body>
</html>