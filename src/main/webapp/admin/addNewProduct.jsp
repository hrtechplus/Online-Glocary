<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@ include file="adminHeader.jsp" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Add New Product</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<div class="alert alert-success" role="alert">
  Product Added Successfully!
</div>
<%} %>
<%
if("wrong".equals(msg)){%>
<div class="alert alert-danger" role="alert">
  Some thing went wrong! Try Again!
</div>
<%} %>
<%
int id=1;
try{
    Connection con=connectionProvider.getcon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(id) from product");
    while(rs.next()){
        id=rs.getInt(1);
        id=id+1;
    }
}
catch(Exception e){
    System.out.println(e);
}
%>
<form action="addNewProductAction.jsp" method="post" class="container">
    <h3 style="color: yellow;">Product ID: <%out.println(id); %></h3>
    <input type="hidden" name="id" value="<%out.println(id); %>">

    <div class="row">
        <div class="col-md-6">
            <h3>Enter Name</h3>
            <input type="text" name="name" placeholder="Enter Name" class="form-control" required>
        </div>

        <div class="col-md-6">
            <h3>Enter Category</h3>
            <input type="text" name="category" placeholder="Enter Category" class="form-control" required>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h3>Enter Price</h3>
            <input type="number" name="price" placeholder="Enter Price" class="form-control" required>
        </div>

        <div class="col-md-6">
            <h3>Active</h3>
            <select name="active" class="form-select" required>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
            </select>
        </div>
    </div>

    <div class="d-grid gap-2">
        <button type="submit" class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXKrwZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
