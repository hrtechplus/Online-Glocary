<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@ include file="adminHeader.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<style >
		@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css");
	</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Edit Product</title>
</head>
<body>
<div class="container py-5 shadow mx-5 p-5 rounded">
    <h2><a class="btn btn-outline-secondary" href="allProductEditProduct.jsp"><i class="bi bi-arrow-left"></i> Back</a></h2>
    <br>

<%
String id=request.getParameter("id");
try{
    Connection con=connectionProvider.getcon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from product where id='"+id+"'");
    while(rs.next()){

%>
<form action="editproductaction.jsp" method="post" class="needs-validation" novalidate>
<input type="hidden" name="id" value="<% out.println(id);%>">

<div class="row g-3">
    <div class="col-md-6">
        <label for="name" class="form-label">Enter Name</label>
        <input type="text" name="name" id="name" class="form-control" value="<%=rs.getString(2) %>" required>
    </div>

    <div class="col-md-6">
        <label for="category" class="form-label">Enter Category</label>
        <input type="text" name="category" id="category" class="form-control" value="<%=rs.getString(3) %>" required>
    </div>
</div>

<div class="row g-3">
    <div class="col-md-6">
        <label for="price" class="form-label">Enter Price</label>
        <input type="text" name="price" id="price" class="form-control" value="<%=rs.getString(4) %>" required>
    </div>

    <div class="col-md-6">
        <label for="active" class="form-label">Active</label>
        <select name="active" id="active" class="form-select" required>
            <option value="Yes" <% if(rs.getString(5).equals("Yes")){out.print("selected");} %>>Yes</option>
            <option value="No" <% if(rs.getString(5).equals("No")){out.print("selected");} %>>No</option>
        </select>
    </div>
</div>

<div class="d-grid gap-2 mt-5">
    <button type="submit" class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</div>
</form>

<%
    }
    }
catch(Exception e){
    System.out.println(e);
}
%>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+X4krwZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
