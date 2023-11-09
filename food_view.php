<?php
include "connection.php";
$data=mysqli_query($conn,"SELECT * FROM food_details");
?>




<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Restaurantly Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  

  <!-- =======================================================
  * Template Name: Restaurantly
  * Updated: Sep 20 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
  .parent{
      color: white;
     
      width:300px;
  display: inline-block;

  position:relative;
  top:0;
  left:10px;
  z-index: 25;
  margin-top: 150px;
 
  }
  .new
  {
    background-image: url("image/images2.jpeg");
    color: white;
  }
  nav 
  {
    position:fixed;
    top:0px;
    left:0;
    z-index: -25;
  }
  img 
  {
    height: 130px;
    width: 200px;
  }
  body{
    background-image: url("image/b3ac935f556fe254403a688d36fff3c0.jpg");
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
  }
  
</style>


</head>

<body>

  <!-- ======= Top Bar ======= -->
  

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-cente">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="index.php">Enjoy with food</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.php" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="hai navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#menu">Menu</a></li>
          <li><a class="nav-link scrollto" href="#specials">Specials</a></li>
          <li><a class="nav-link scrollto" href="#events">Events</a></li>
          <li><a class="nav-link scrollto" href="#chefs">Chefs</a></li>
          <li><a class="nav-link scrollto" href="#gallery">Gallery</a></li>
          
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      <a href="logout.php" class="book-a-table-btn scrollto d-none d-lg-flex">Logout</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  
    <!-- <section id="hero" class="d-flex align-items-center"> 
    <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100"> 
     -->
     <section>
  <?php
  while($row=mysqli_fetch_assoc($data)){
    ?>
  <div class="parent">
  <div class="container">
  <div class="row">

<div class=" new card mt-5" style="width: 18rem;">
  <img src="./image/<?php echo $row['photo'];?>" class="card-img-top mt-5" alt="...">
  <div class="card-body">
    <strong>Food Name:</strong>
    <h5 class="card-title"><?php echo $row['food_name'];?></h5>
    <strong>Ingredients</strong>
    <h5 class="card-title"><?php echo $row['ingredients']; ?></h5>
    <strong>Preparation Time</strong>
    <p class="card-text"><?php echo $row['preparationtime'];?></p>
    <strong>Price</strong>
    <p class="card-text"><?php echo $row['price'];?></p>
    <a href="update.php?id=<?php echo $row['food_id'];?>" class="btn btn-primary">Update details</a>
    <a href="remove.php?id=<?php echo $row['food_id'];?>" class="btn btn-danger">Remove dishes</a>
  </div>
</div>


  </div>
</div>

  </div>
<?php
}
?>

  </section><!-- End Hero -->
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>