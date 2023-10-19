<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup</title>
  <link rel="stylesheet" href="css/signup-style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <h2 class="text-center mb-4">Sign Up</h2>
      <form action="signup_action.jsp" method="post" class="needs-validation" novalidate>
        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
        </div>
        <div class="mb-3">
          <label for="mobilenumber" class="form-label">Mobile Number</label>
          <input type="number" name="mobilenumber" id="mobilenumber" class="form-control" placeholder="Enter Mobile Number" required>
        </div>
        <div class="mb-3">
          <label for="securityQuetion" class="form-label">Security Question</label>
          <select name="securityQuetion" id="securityQuetion" class="form-select" required>
            <option value="What was your first car?">What was your first car?</option>
            <option value="What is the name of your first pet?">What is the name of your first pet?</option>
            <option value="What elementary school did you attend?">What elementary school did you attend?</option>
            <option value="What is the name of town where you were born?">What is the name of town where you were born?</option>
          </select>
        </div>
        <div class="mb-3">
          <label for="answer" class="form-label">Answer</label>
          <input type="text" name="answer" id="answer" class="form-control" placeholder="Enter Answer" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
        </div>

        <%
        String msg = request.getParameter("msg");
        if ("valid".equals(msg)) {
        %>
          <div class="alert alert-success">Successfully Registered</div>
        <% } %>
        <%
        if ("invalid".equals(msg)) {
        %>
          <div class="alert alert-danger">Something Went Wrong! Try Again!</div>
        <% } %>

        <div class="d-grid gap-2">
          <button type="submit" class="btn btn-primary">Sign Up</button>
        </div>
      </form>
      <p class="text-center mt-4">Already have an account? <a href="login.jsp">Login</a></p>
    </div>
    <div class="col-md-6">
      <h2 class="text-center mb-4">Online Shopping</h2>
      <p class="text-muted">The Online Shopping System is the application that allows users to shop online without going to the shops to buy them.</
