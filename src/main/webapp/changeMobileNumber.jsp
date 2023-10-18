<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Mobile Number</title>
    <link rel="stylesheet" href="css/changeDetails.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div class="container shadow p-4 rounded-lg mx-auto" style="max-width: 800px;">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h1 class="mb-4">Change Mobile Number</h1>

            <%
            String msg = request.getParameter("msg");
            if ("done".equals(msg)) {
            %>
                <div class="alert alert-success">Your Mobile Number successfully changed!</div>
            <%} %>
            <%
            if ("wrong".equals(msg)) {
            %>
                <div class="alert alert-danger">Your Password is wrong!</div>
            <%} %>

            <form action="changeMobileNumberAction.jsp" method="post" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="newMobileNo" class="form-label">Enter Your New Mobile Number</label>
                    <input type="text" name="newMobileNo" id="newMobileNo" class="form-control" placeholder="Enter Your New Mobile Number" required>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Enter Password (For Security)</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password (For Security)" required>
                </div>

                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
