<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container shadow p-4 rounded-lg mx-auto" style="max-width: 500px;">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1 class="mb-4">Your Account Details</h1>
            <%
            try {
                Connection con = connectionProvider.getcon();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
                while (rs.next()) {
            %>
                <div class="card mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Name: <%= rs.getString(1) %></h5>
                        <hr>
                        <h5 class="card-title">Email: <%= rs.getString(2) %></h5>
                        <hr>
                        <h5 class="card-title">Mobile Number: <%= rs.getString(3) %></h5>
                        <hr>
                        <h5 class="card-title">Security Question: <%= rs.getString(4) %></h5>
                        <hr>
                    </div>
                </div>
            <%
                }
            } catch (Exception e) {
                System.out.println(e);
            }
            %>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXKrwZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
