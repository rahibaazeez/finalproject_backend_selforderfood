<?php
include "connection.php";
$id=$_GET['id'];

$data=mysqli_query($conn,"SELECT food_order.id,food_details.photo,food_details.food_name,food_details.preparationtime,food_details.price,food_details.ingredients FROM food_order INNER JOIN food_details ON food_order.food_id=food_details.food_id WHERE id='$id'");
if(isset($_POST['submit'])){
  $sql1=mysqli_query($conn,"INSERT INTO  message (notificatio,oreder_id,id) VALUES ")
}
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
  <style>
    .new{
        margin-bottom: 200px;
        margin-left: 5px;
    }
    img{
        width: 80px;
        height: 100px;
    }
    .parent{
      display:inline-block;
      margin-top: 50px;
    }
    body{
    background-image: url("image/b3ac935f556fe254403a688d36fff3c0.jpg");
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
  }
  
  </style>
  

  <!-- =======================================================
  * Template Name: Restaurantly
  * Updated: Sep 20 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-cente">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="index.php">Enjoy with food</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.php" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="home.php">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#menu">Menu</a></li>
          
          <li><a class="nav-link scrollto" href="#gallery">Gallery</a></li>
          
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      
         
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <!-- <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100"> -->
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
    <button type="submit" name="submit" class="btn btn-primary">Submit </button>
    
  </div>
</div>


  </div>
</div>

  </div>
    
  <?php
}
?>
    </div>
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