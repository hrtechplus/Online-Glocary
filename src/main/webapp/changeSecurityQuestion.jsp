<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Security Question</title>
    <link rel="stylesheet" href="css/changeDetails.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div class="container shadow p-4 rounded-lg mx-auto" style="max-width: 800px;">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h1 class="mb-4">Change Security Question</h1>

            <%
            String msg = request.getParameter("msg");
            if ("done".equals(msg)) {
            %>
                <div class="alert alert-success">Your security Question successfully changed!</div>
            <%} %>
            <%
            if ("wrong".equals(msg)) {
            %>
                <div class="alert alert-danger">Your Password is wrong!</div>
            <%} %>

            <form action="changeSecurityQuestionAction.jsp" method="post" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="securityQuetion" class="form-label">Select Your New Security Question</label>
                    <select class="form-select" id="securityQuetion" name="securityQuetion" required>
                        <option value="What was your first car?">What was your first car?</option>
                        <option value="What is the name of your first pet?">What is the name of your first pet?</option>
                        <option value="What elementary school did you attend?">What elementary school did you attend?</option>
                        <option value="What is the name of town where you were born?">What is the name of town where you were born?</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="newAnswer" class="form-label">Enter Your New Answer</label>
                    <input type="text" name="newAnswer" id="newAnswer" class="form-control" placeholder="Enter Your New Answer" required>
                </div>

                <div class="mb-3">
                    <label for="Password" class="form-label">Enter Password (For Security)</label>
                    <input type="password" name="Password" id="Password" class="form-control" placeholder="Enter Password (For Security)" required>
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
