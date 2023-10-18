<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adding Or Change Address</title>
    <link rel="stylesheet" href="css/changeDetails.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div class="container shadow p-4 rounded-lg mx-auto" style="max-width: 800px;">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h1 class="mb-4">Adding Or Change Address</h1>

            <%
            String msg = request.getParameter("msg");
            if ("valid".equals(msg)) {
            %>
                <div class="alert alert-success">Address Successfully Updated!</div>
            <%} %>
            <%
            if ("invalid".equals(msg)) {
            %>
                <div class="alert alert-danger">Something Went Wrong! Try Again!</div>
            <%} %>

            <%
            try {
                Connection con = connectionProvider.getcon();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
                while (rs.next()) {
            %>
                <form action="addChangeAddressAction.jsp" method="post" class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="address" class="form-label">Enter Address</label>
                        <input type="text" name="address" id="address" class="form-control" value="<%= rs.getString(7) %>" placeholder="Enter Address" required>
                    </div>
                    <div class="mb-3">
                        <label for="city" class="form-label">Enter City</label>
                        <input type="text" name="city" id="city" class="form-control" value="<%= rs.getString(8) %>" placeholder="Enter City" required>
                    </div>
                    <div class="mb-3">
                        <label for="state" class="form-label">Enter State</label>
                        <input type="text" name="state" id="state" class="form-control" value="<%= rs.getString(9) %>" placeholder="Enter State" required>
                    </div>
                    <div class="mb-3">
                        <label for="country" class="form-label">Enter Country</label>
                        <input type="text" name="country" id="country" class="form-control" value="<%= rs.getString(10) %>" placeholder="Enter Country" required>
                    </div>
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button>
                    </div>
                </form>
            <%
                }
            } catch (Exception e) {
                System.out.println(e);
            }
            %>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min
