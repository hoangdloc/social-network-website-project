<?php
  require 'config/config.php';
  include("includes/classes/User.php");
  include("includes/classes/Post.php");

  if (isset($_SESSION['username'])) {
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con, "SELECT * FROM tblUser WHERE username = '$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
  }
  else {
    header("Location: register.php");
  }
?>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Socialhub</title>

  <!-- Javascript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>

  <!-- CSS -->
  <link href="assets/css/all.css" rel="stylesheet"> <!--load all styles -->
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>

  <div class="top_bar">

    <div class="logo">
      <a href="index.php">Socialhub</a>
    </div>

    <nav>
      <a href="<?php echo $userLoggedIn; ?>">
        <?php
          echo $user['first_name'];
        ?>
      </a>
      <a href="index.php">
        <i class="fas fa-home fa-lg"></i>
      </a>
      <a href="#">
        <i class="fas fa-envelope fa-lg"></i>
      </a>
      <a href="#">
        <i class="fas fa-bell fa-lg"></i>
      </a>
      <a href="requests.php">
        <i class="fas fa-users fa-lg"></i>
      </a>
      <a href="#">
        <i class="fas fa-cog fa-lg"></i>
      </a>
      <a href="includes/handlers/logout.php">
        <i class="fas fa-sign-out-alt fa-lg"></i>
      </a>
    </nav>
  </div>

  <div class="wrapper">
