<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="css/signup-style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
  <div class="container py-5">
    <div class="row mx-auto shadow p-2 rounded" style="max-width:1000px">
      <div class="col-md-6">
        <h2 class="text-center mb-4">Login</h2>
        <form action="loginaction.jsp" method="post" class="needs-validation" novalidate>
          <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
          </div>
          <%
          String msg = request.getParameter("msg");
          if ("notexist".equals(msg)) {
          %>
            <div class="alert alert-danger">Incorrect Username or Password</div>
          <% } %>
          <%
          if ("invalid".equals(msg)) {
          %>
            <div class="alert alert-danger">Something Went Wrong! Try Again!</div>
          <% } %>
          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Login <i class='far fa-arrow-alt-circle-right'></i></button>
          </div>
        </form>
        <div class="mt-4">
          <p class="text-center">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
          <p class="text-center"><a href="forgotPassword.jsp">Forgot Password?</a></p>
        </div>
      </div>
      <div class="col-md-6">
        <h2 class="text-center mb-4">Online Shopping</h2>
        <p class="text-muted">The Online Shopping System is the application that allows users to shop online without going to the shops to buy them.</p>
      </div>
    </div>
  </div>
</body>
</html>
