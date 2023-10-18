<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/home-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div class="container">
    <div class="d-flex justify-content-between align-items-center py-3 bg-light">
        <h2 class="my-0">Change Details <i class="fa fa-edit"></i></h2>
        <div class="d-flex align-items-center">
            <% String email = session.getAttribute("email").toString(); %>
            <a href="home.jsp" class="btn btn-outline-primary me-2"><i class='fas fa-arrow-circle-left'></i> Back</a>
            <a href="" class="btn btn-outline-primary me-2">Your Profile (<%out.println(email); %>) <i class='fas fa-user-alt'></i></a>
        </div>
    </div>

    <ul class="nav nav-pills nav-justified mb-3">
        <li class="nav-item"><a href="changePassword.jsp" class="nav-link">Change Password <i class='fas fa-key'></i></a></li>
        <li class="nav-item"><a href="addChangeAddress.jsp" class="nav-link">Add or change Address <i class='fas fa-map-marker-alt'></i></a></li>
        <li class="nav-item"><a href="changeSecurityQuestion.jsp" class="nav-link">Change Security Question <i class="fa fa-repeat"></i></a></li>
        <li class="nav-item"><a href="changeMobileNumber.jsp" class="nav-link">Change Mobile Number <i class='fas fa-phone'></i></a></li>
    </ul>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYKRWZmR/l5ExbN" crossorigin="anonymous"></script>
</body>
</html>
