<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<style >
	@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css");
	</style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/home-style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
  <header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <h1 class="me-lg-auto text-white display-1 fs-4 ">SLIIT DEGREE GROCERY CENTER [admin]</h1>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="addNewProduct.jsp" class="nav-link px-2 text-white"> <i class="bi bi-plus-lg"></i> Add New Product </a></li>
          <li><a href="allProductEditProduct.jsp" class="nav-link px-2 text-white"><i class="bi bi-list mx-1"></i>All Products & Edit Products </a></li>
          <li><a href="messagesReceived.jsp" class="nav-link px-2 text-white"><i class="bi bi-envelope mx-1"></i>Messages Received </a></li>
          <li><a href="ordersReceived.jsp" class="nav-link px-2 text-white"><i class="bi bi-file-arrow-down mx-1"></i>Orders Received </a></li>
          <li><a href="cancelOrders.jsp" class="nav-link px-2 text-white"><i class="bi bi-x-circle mx-1  color: cornflowerblue;"></i>Cancel Orders </a></li>
          <li><a href="deliveredOrders.jsp" class="nav-link px-2 text-white"><i class="bi bi-truck mx-1"></i>Delivered Orders </a></li>
          <li><a href="../logout.jsp" class="nav-link px-2 text-white"><i class="bi bi-person mx-1"></i>Logout </a></li>
        </ul>
      </div>
    </div>
  </header>
  <br>
  </body>
</html>
