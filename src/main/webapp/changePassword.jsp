<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="css/changeDetails.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div class="container shadow p-4 rounded-lg mx-auto" style="max-width: 800px;">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h1 class="mb-4">Change Password</h1>

            <%
            String msg = request.getParameter("msg");
            if ("notmatch".equals(msg)) {
            %>
                <div class="alert alert-danger">New password and Confirm password do not match!</div>
            <%} %>
            <%
            if ("wrong".equals(msg)) {
            %>
                <div class="alert alert-danger">Your old Password is wrong!</div>
            <%} %>
            <%
            if ("done".equals(msg)) {
            %>
                <div class="alert alert-success">Password changed successfully!</div>
            <%} %>
            <%
            if ("invalid".equals(msg)) {
            %>
                <div class="alert alert-danger">Something went wrong! Try again!</div>
            <%} %>

            <form action="changePasswordAction.jsp" method="post" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="oldPassword" class="form-label">Enter Old Password</label>
                    <input type="password" name="oldPassword" id="oldPassword" class="form-control" placeholder="Enter Old Password" required>
                </div>
                <div class="mb-3">
                    <label for="newPassword" class="form-label">Enter New Password</label>
                    <input type="password" name="newPassword" id="newPassword" class="form-control" placeholder="Enter New Password" required>
                </div>
                <div class="mb-3">
                    <label for="confirmPassword" class="form-label">Enter Confirm Password</label>
                    <input type="password" name="confirmPassword" id="confirmPassword" class="form-control" placeholder="Enter Confirm Password" required>
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYKRWZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
