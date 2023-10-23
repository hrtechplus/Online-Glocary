<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@ include file="adminHeader.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Add New Product</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if ("done".equals(msg)) {
%>
<div class="alert alert-success" role="alert">
  Product Added Successfully!
</div>
<%} %>
<%
if ("wrong".equals(msg)) {
%>
<div class="alert alert-danger" role="alert">
  Something went wrong! Try Again!
</div>
<%} %>

<%
int id = 1;
try {
    Connection con = connectionProvider.getcon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select max(id) from product");
    while (rs.next()) {
        id = rs.getInt(1);
        id = id + 1;
    }
} catch (Exception e) {
    System.out.println(e);
}
%>

<form action="addNewProductAction.jsp" method="post" class="container py-5 shadow " style="max-width:800px">
    <div class="row">
        <div class="col-md-6">
            <h3 class="mb-3">Product ID: <%out.println(id); %></h3>
            <input type="hidden" name="id" value="<%out.println(id); %>">
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <label for="name" class="form-label">Enter Name</label>
            <input type="text" name="name" id="name" placeholder="Enter Name" class="form-control" required>
        </div>

        <div class="col-md-6">
            <label for="category" class="form-label">Enter Category</label>
            <input type="text" name="category" id="category" placeholder="Enter Category" class="form-control" required>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <label for="price" class="form-label">Enter Price</label>
            <input type="number" name="price" id="price" placeholder="Enter Price" class="form-control" required>
        </div>

        <div class="col-md-6">
            <label for="active" class="form-label">Active</label>
            <select name="active" id="active" class="form-select" required>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
            </select>
        </div>
    </div>

    <div class="d-grid gap-2 mt-3">
        <button type="submit" class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+X4krwZmR/l5ExbN" crossorigin="anonymous"></script
