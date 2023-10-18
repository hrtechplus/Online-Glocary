<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/home-style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
  <header class="p-3 bg-dark text-white ">
    <div class="container ">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="#" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <h1 class=" display-3 fs-4">SLIIT DEGREE GLOCERY</h1>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="home.jsp" class="nav-link px-2 text-white mx-1">Home <i class="fa fa-institution"></i></a></li>
          <li><a href="myCart.jsp" class="nav-link px-2 text-white mx-1">My Cart <i class='fas fa-cart-arrow-down'></i></a></li>
          <li><a href="myOrders.jsp" class="nav-link px-2 text-white mx-1">My Orders <i class='fab fa-elementor'></i></a></li>
          <li><a href="changeDetails.jsp" class="nav-link px-2 text-white mx-1">Change Details <i class="fa fa-edit"></i></a></li>
          <li><a href="messageUs.jsp" class="nav-link px-2 text-white mx-1">Message Us <i class='fas fa-comment-alt'></i></a></li>
          <li><a href="about.jsp" class="nav-link px-2 text-white mx-1">About <i class="fa fa-address-book"></i></a></li>
          <li><a href="logout.jsp" class="nav-link px-2 text-white mx-1">Logout <i class='fas fa-share-square'></i></a></li>
        </ul>

        <form action="searchHome.jsp" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
        	<div class="d-flex justify-content-evenly px-1">
        	          <input type="text" class="form-control mx-1" placeholder="Search">
          				<button type="submit" class="btn btn-primary">Search <i class="fa fa-search d-flex justify-content-evenly"></i></button>
        	</div>

        </form>

        <div class="text-end">
          <%
          String email = session.getAttribute("email").toString();
          %>
          <h2 class="display-6 fs-6"><a href="#"> <%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
        </div>
      </div>
    </div>
  </header>

  <div class="container">
    </div>
</body>
</html>
