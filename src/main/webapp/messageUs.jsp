<%@page import="java.sql.*" %>
<%@page import="os.project.connectionProvider" %>
<%@include file="header.jsp" %>


<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div class="container shadow p-4 rounded-lg mx-auto" style="max-width: 500px;">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <h1 class="mb-4">Message Us <i class='fas fa-comment-alt'></i></h1>
      <%
      String msg=request.getParameter("msg");
      if("valid".equals(msg)){
      %>
      <h3 class="text-center text-success">Message successfully sent. Our team will contact you soon!</h3>
      <%} %>
      <%
      if("invalid".equals(msg)){
      %>
      <h3 class="text-center text-danger">Something Went Wrong! Try Again!</h3>
      <%} %>

      <form action="messageUsAction.jsp" method="post" class="needs-validation" novalidate>
        <div class="mb-3">
          <label for="subject" class="form-label">Subject</label>
          <input type="text" name="subject" id="subject" class="form-control" placeholder="Enter Subject" required>
        </div>
        <div class="mb-3">
          <label for="body" class="form-label">Message</label>
          <textarea name="body" id="body" class="form-control" placeholder="Enter Your Message" required></textarea>
        </div>
        <div class="d-grid gap-2">
          <button type="submit" class="btn btn-primary">Send <i class="far fa-arrow-alt-circle-right"></i></button>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYKRWZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
