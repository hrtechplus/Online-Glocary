<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@ include file="adminHeader.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>All Products & Edit Products</title>
</head>
<body>
<div class="container py-5">
    <h2 class="text-center mb-4" style="font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></h2>

<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<div class="alert alert-success" role="alert">
  Product Successfully Updated!
</div>
<%} %>
<%
if("wrong".equals(msg)){
%>
<div class="alert alert-danger" role="alert">
  Some thing went wrong! Try again!
</div>
<%} %>
<table class="table table-bordered rounded-3">
        <thead class="thead-light">
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-lkr">Rs</i> Price</th>
            <th scope="col">Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
            <th scope="col">Delete <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
       Connection con=connectionProvider.getcon();
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from product");
       while(rs.next()){
       
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-lkr">Rs</i> <%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><a href="editProduct.jsp?id=<%=rs.getString(1) %>" class="btn btn-sm btn-primary">Edit <i class='fas fa-pen-fancy'></i></a></td>
            <td><a href="deleteProduct.jsp?id=<%=rs.getString(1) %>" class="btn btn-sm btn-danger">Delete <i class='fas fa-pen-fancy'></i></a></td>
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
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+X4krwZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
