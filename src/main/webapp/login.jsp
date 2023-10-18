<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container shadow-lg p-4 rounded-lg mx-auto my-5" style="max-width: 800px;">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2 class="mb-4">Login</h2>
            <form action="loginaction.jsp" method="post" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
                </div>
                <div class="d-grid gap-2">
                    <input type="submit" value="Login" class="btn btn-primary">
                </div>
            </form>
            <p class="mt-4"><a href="signup.jsp">Don't have an account? Sign Up</a></p>
            <p><a href="forgotPassword.jsp">Forgot Password?</a></p>
        </div>
        <div class="col-md-4">
            <h2 class="mb-4">Online Shopping</h2>
            <p>The Online Shopping System allows you to shop without visiting physical stores.</p>
            <%
            String msg=request.getParameter("msg");
            if("notexist".equals(msg)){  
            %>
            <h4 class="alert alert-danger">Incorrect Username or Password</h4>
            <% } %>

            <%
            if("invalid".equals(msg)){
            %>

            <h4 class="alert alert-danger">Some thing Went Wrong! Try Again !</h4>
            <%} %>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXKrwZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
