<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Forgot Password</title>
</head>
<body>
<div class="container py-5">
    <div class="row mx-auto shadow p-2 rounded" style="max-width:900px">
        <div class="col-md-6">
            <h2 class="mb-4 text-center">Reset Your Password</h2>
            <form action="forgotpasswordaction.jsp" method="post" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" id="email" placeholder="Enter Email" required>
                </div>
                <div class="mb-3">
                    <label for="mobilenumber" class="form-label">Mobile Number</label>
                    <input type="number" name="mobilenumber" class="form-control" id="mobilenumber" placeholder="Enter Mobile Number" required>
                </div>
                <div class="mb-3">
                    <label for="securityQuestion" class="form-label">Security Question</label>
                    <select name="securityQuestion" class="form-select" id="securityQuestion" required>
                        <option value="What was your first car?">What was your first car?</option>
                        <option value="What is the name of your first pet?">What is the name of your first pet?</option>
                        <option value="What elementary school did you attend?">What elementary school did you attend?</option>
                        <option value="What is the name of town where you were born?">What is the name of town where you were born?</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="answer" class="form-label">Answer</label>
                    <input type="text" name="answer" class="form-control" id="answer" placeholder="Enter Answer" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">New Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Enter Your New Password" required>
                </div>
                <div class="d-grid gap-2">
                    <input type="submit" value="Save" class="btn btn-primary">
                </div>
            </form>

            <p class="mt-4 text-center">Already have an account? <a href="login.jsp">Login</a></p>

            <%
            String msg=request.getParameter("msg");
            if("done".equals(msg)){   
            %>
            <div class="alert alert-success" role="alert">
                Password Changed Successfully!
            </div>
            <% } %>
            <%
            if("invalid".equals(msg)){
            %>
            <div class="alert alert-danger" role="alert">
                Some thing Went Wrong! Try Again !
            </div>
            <%} %>
        </div>
        <div class="col-md-6">
            <h2 class="mb-4">Online Shopping</h2>
            <p class="mb-4">The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
        </div>
    </div>
</div>


