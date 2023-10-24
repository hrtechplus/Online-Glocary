<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>
<%
String msg=request.getParameter("msg");
if("notpossible".equals(msg)){
%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>
<%

if("inc".equals(msg)){
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>

<%

if("dec".equals(msg)){
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>

<%

if("removed".equals(msg)){
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>
<table>
<thead>

<%
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
            <th scope="col" style="background-color: yellow;">Total: <small class=" fs-6">Rs</small><%out.println(total); %>  </th>
             <% if(total>0){ %><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><small class=" fs-6">(Rs)</small> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
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
            <td><i class="fa fa-lkr">Rs</i><%=rs1.getString(4) %> </td>
            <td><a href="incDecQuantity.jsp?id=<%= rs1.getString(1) %>&quantity=inc"><i class="bi bi-plus"></i></a> <%=rs1.getString(8) %> <a href="incDecQuantity.jsp?id=<%=rs1.getString(1)%>&quantity=dec"><i class="bi bi-dash"></i></a></td>
            <td><i class="fa fa-lkr">RS</i><%=rs1.getString(10) %> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs1.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
<%
  }

  
}
catch(Exception e){
	System.out.println(e);
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>